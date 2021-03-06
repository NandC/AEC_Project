

ALTER PROCEDURE [dbo].[ProductPriceList]
	@Category       VARCHAR(50)  = NULL,
	@SubCategory    VARCHAR(255) = NULL,
	@OPTICAL_SYSTEM VARCHAR(255) = NULL ,
	@mA             FLOAT        = NULL, --<<===
	@Fixture_Name   VARCHAR(255) = NULL,
	@Full_Name      VARCHAR(255) = NULL

	/*
	EXEC [dbo].[ProductPriceList] 
	   @Category       = NULL
	  ,@SubCategory    = 'STYLO'
	  ,@OPTICAL_SYSTEM ='STU-S'
	  ,@mA             = NULL
	  ,@Fixture_Name   = NULL
	  ,@Full_Name  = 'STYLO VP 0F2H1 STU-S 4.350-1M CL.I'
	  */
AS
BEGIN
	SELECT
	   @Category       = NULL
	  ,@SubCategory    = 'STYLO'
	  ,@OPTICAL_SYSTEM ='STU-S'
	  ,@mA             = NULL
	  ,@Fixture_Name   = NULL
	  ,@Full_Name  = 'STYLO VP 0F2H1 STU-S 4.350-1M CL.I'

-- TODO: HANDLE APOSTROPHY
	SET NOCOUNT ON
	SET CONCAT_NULL_YIELDS_NULL OFF 
	
	DECLARE @COMMISSION_10        NUMERIC(8,3)
	DECLARE @E_to_US              NUMERIC(8,3)
	DECLARE @GRANDTOTALConversion NUMERIC(8,3)

	DECLARE @SUM1    NUMERIC(8,3)
	DECLARE @PROD_ID INT

	SELECT @COMMISSION_10 = ParaValue FROM AEC_PARAMETER WITH (NOLOCK) 
	WHERE ParaName = 'COMMISSION(10%)'

	SELECT @GRANDTOTALConversion = ParaValue FROM AEC_PARAMETER WITH (NOLOCK) 
	WHERE ParaName = 'GRANDTOTALConversion(/0.9)'

	SELECT @E_to_US  = ParaValue FROM AEC_PARAMETER WITH (NOLOCK) 
	WHERE ParaName = 'Conversion_rate_e_to_$'

	SELECT 
		p.Id                     AS PROD_ID,
		--P.Fixture_Name,
		    P.Full_Name + ' ' + 
			SUBSTRING('3270lm', 0, ( LEN('3270lm')-1) ) + ' ' +  
			UPPER ( SUBSTRING('3270lm', ( LEN('3270lm')-1),  LEN('3270lm')) ) +
			' @ ' + P.NOMINAL_POWER
		AS PRODUCT_TITLE,
		@E_to_US                  AS E_to_US,
		P.Name                    AS PROD_SUB_CAT, 
		P.Price_F, 
		--P.Price_DA, 
		--P.Price_PLM,	
		P.Price_F   * @E_to_US     AS Price_F_US, 
		--P.Price_DA  * @E_to_US     AS Price_DA_US, 
		--P.Price_PLM * @E_to_US     AS Price_PLM_US,	

			CASE O.OptionType
				WHEN 'COLOR' THEN O.Name + ' ' + O.OptionType
				ELSE O.Name
			END                  
		AS OPTION_NAME,
		--ISNULL(O.Price, 0) * @E_to_US AS PRICE_OPTION_US,
			(CASE 
			    WHEN (O.Price IS NULL AND O.Name LIKE '%EXTRA CHARGE%') THEN (P.Price_F * ExtraChargePecent/100)
				ELSE ISNULL(O.Price, 0) 
			END )* @E_to_US                 
	    AS Price_with_extra_charge_US,

		SC.DutiesPecent,
		SC.DocumentsMn,
		SC.FreightMn,

		@COMMISSION_10            AS COMMISSION_10, 
		@GRANDTOTALConversion     AS GRANDTOTALConversion,
		--SC.DiscountMultiplier,
		SC.MarkupMultiplier,

		CAST(0 AS NUMERIC(8,3))                      AS SUM1,
		CAST(0 AS NUMERIC(8,3))                       AS MarkupPercent, -- SUM1 * MarkupMultiplier
		CAST(0 AS NUMERIC(8,3))                       AS SUB_TOTAL,     -- SUM1 + MarkupPercent
		CAST(0 AS NUMERIC(8,3))                       AS GRAND_TOTAL,   -- SUB_TOTAL/0.9
		CAST(0 AS NUMERIC(8,3))                       AS COMMISSION,    -- GRAND_TOTAL * @COMMISSION_10

		SC.DocumentsMn * SC.ConversionMultiplier AS DocumentsMn2,
		SC.FreightMn * SC.ConversionMultiplier   AS FreightMn2,
		SC.ConversionMultiplier,
		CAST(0 AS NUMERIC(8,3))                       AS MarkupPercent2 -- MarkupPercent * ConversionMultiplier

		--O.OptionType, 
		--O.ProdSubCategory, 
		--O.Description,
		--SC.Category, 
		--P.LED_Type, 
		--P.Lumen, 
		--P.mA,  
		--P.CCT, 
		--P.Class, 
		--P.Mounting, 
		--P.N_OF_MODULES_INSTALLED, 
		--P.NOMINAL_POWER, 
		--P.OPTICAL_SYSTEM
	INTO #TEMP_PRICE_LIST
	FROM 
	    DBO.Product P
		LEFT JOIN [SubCategoryOptions] O ON P.Name = O.ProdSubCategory
		LEFT JOIN [SubCategory] SC       ON SC.SubCategory = O.[ProdSubCategory]
	WHERE
		ISNULL(@Category,'') = CASE WHEN ISNULL(@Category,'') != '' THEN SC.Category ELSE ISNULL(@Category,'') END        
		AND ISNULL(@SubCategory,'') = CASE WHEN ISNULL(@SubCategory,'') != '' THEN SC.SubCategory ELSE ISNULL(@SubCategory,'') END        
		AND ISNULL(@SubCategory,'') = CASE WHEN ISNULL(@SubCategory,'') != '' THEN SC.SubCategory ELSE ISNULL(@SubCategory,'') END        
		AND ISNULL(@Full_Name,'') = CASE WHEN ISNULL(@Full_Name,'') != '' THEN P.Full_Name ELSE ISNULL(@Full_Name,'') END        

	-- LOOP FETCH HERE <<<---
	DECLARE db_cursor CURSOR FAST_FORWARD FOR
	SELECT DISTINCT PROD_ID FROM #TEMP_PRICE_LIST WITH (NOLOCK)

	OPEN db_cursor  
	FETCH NEXT FROM db_cursor INTO @PROD_ID 

	WHILE @@FETCH_STATUS = 0  
	BEGIN 
		SELECT @SUM1 = SUM(Price_with_extra_charge_US) + MAX(Price_F_US)
		FROM #TEMP_PRICE_LIST -- SUM1 = SUM(Price_with_extra_charge_US) + Price_F_US 
		WHERE PROD_ID = @PROD_ID
		GROUP BY PROD_ID 

		SELECT  @SUM1 = CAST(@SUM1 AS NUMERIC(8,3)) --782.124

		UPDATE 
			#TEMP_PRICE_LIST 
		SET 
			SUM1 = CAST(@SUM1 AS NUMERIC(8,3)) --Arithmetic overflow error converting float to data type numeric..
		WHERE 
			PROD_ID = @PROD_ID

		UPDATE 
			#TEMP_PRICE_LIST 
		SET 
			MarkupPercent = (SUM1 * MarkupMultiplier) -- SUM1 * MarkupMultiplier
		WHERE 
			PROD_ID = @PROD_ID
		----SELECT 	SUM1  + MarkupPercenT	FROM	#TEMP_PRICE_LIST 
		----WHERE PROD_ID = @PROD_ID

		UPDATE 
			#TEMP_PRICE_LIST 
		SET 
			SUB_TOTAL   = SUM1  + MarkupPercenT     -- SUM1 + MarkupPercent
		WHERE 
			PROD_ID = @PROD_ID

		UPDATE 
			#TEMP_PRICE_LIST 
		SET 
			GRAND_TOTAL = CAST(SUB_TOTAL/0.9 AS NUMERIC(8,3))  -- SUB_TOTAL/0.9
		WHERE 
			PROD_ID = @PROD_ID

		--SELECT CAST(GRAND_TOTAL * @COMMISSION_10 AS NUMERIC(8,3)) FROM #TEMP_PRICE_LIST
		--SELECT CAST(MarkupPercent * ConversionMultiplier AS NUMERIC(8,3)) FROM #TEMP_PRICE_LIST

		UPDATE 
			#TEMP_PRICE_LIST 
		SET 
			COMMISSION     = CAST(GRAND_TOTAL * @COMMISSION_10 AS NUMERIC(8,3)),    -- GRAND_TOTAL * @COMMISSION_10
			MarkupPercent2 = CAST(MarkupPercent * ConversionMultiplier AS NUMERIC(8,3))-- MarkupPercent * ConversionMultiplie
		WHERE 
			PROD_ID = @PROD_ID

      FETCH NEXT FROM db_cursor INTO @PROD_ID 
	END 

	CLOSE db_cursor  
	DEALLOCATE db_cursor

	SELECT * FROM #TEMP_PRICE_LIST

END
