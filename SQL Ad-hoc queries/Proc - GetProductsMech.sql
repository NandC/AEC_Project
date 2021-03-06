

ALTER PROCEDURE [dbo].[GetProductsMech]
	@Category    VARCHAR(255) = NULL,
	@SubCategory VARCHAR(255) = NULL,
	@TYPE        VARCHAR(255) = NULL 
AS
BEGIN
-- TODO: HANDLE APOSTROPHY
	SET NOCOUNT ON
	SET CONCAT_NULL_YIELDS_NULL OFF 

SELECT [Id]
      ,[SubCategory]
      ,[CODE]
      ,[MODEL]
      ,[TYPE]
      ,[HEIGHT_OUT_OF_GROUND]
      ,[TOTAL_HEIGHT]
      ,[IN_GROUNDING_SECTION]
      ,[BASE]
      ,[POSTTOP0]
      ,[WALL_THICKNESS]
      ,[MATERIAL]
      ,[PRICE]
      ,[CreatedOn]
      ,[CreatedBy]
      ,[UpdatedOn]
      ,[Updatedby]
      ,[row_version]
  FROM [AEC_Illumination].[dbo].[Product_Mech]
	 --WHERE
		--Name = 'STYLO' --is not null
		--AND Name           = @SubCategory
		--AND OPTICAL_SYSTEM = @OPTICAL_SYSTEM 

END