ALTER PROCEDURE [dbo].[GetProducts]
	@Category       VARCHAR(50) = NULL,
	@SubCategory    VARCHAR(255) = NULL,
	@OPTICAL_SYSTEM VARCHAR(255) = NULL ,
	@mA             float         = NULL
AS
BEGIN
-- TODO: HANDLE APOSTROPHY
	SET NOCOUNT ON
	SET CONCAT_NULL_YIELDS_NULL OFF 

	SELECT 
		[Id]
		,[Fixture_Name]
		,[Name]
		,[Full_Name]
		,[LED_Type]
		,[OPTICAL_SYSTEM]
		,[Lumen]
		,[CCT]
		,[N_OF_MODULES_INSTALLED]
		,[mA]
		,[NOMINAL_POWER]
		,[Class]
		,[Mounting]
		,[Price_F]
		,[Price_DA]
		,[Price_PLM]
		,[Category]
		,[CreatedOn]
		,[CreatedBy]
		,[UpdatedOn]
		,[Updatedby]
		,[row_version]
	  FROM 
		[dbo].[Product] WITH (NOLOCK)
	 WHERE
		Name is not null
	 -- 	Category           = @Category
		--AND Name           = @SubCategory
		--AND OPTICAL_SYSTEM = @OPTICAL_SYSTEM 

END