



--DROP TABLE dbo.Product_Mech
--GO

--CREATE TABLE dbo.Product_Mech(
--	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
--	[SubCategory] [nvarchar](255) NULL FOREIGN KEY(SubCategory) REFERENCES [dbo].[SubCategory] ([SubCategory]),
--	CODE nvarchar(255) NULL,
--	MODEL nvarchar(255) NULL,
--	TYPE nvarchar(255) NULL,
--	HEIGHT_OUT_OF_GROUND float NULL,
--	TOTAL_HEIGHT float NULL,
--	IN_GROUNDING_SECTION float NULL,
--	BASE float NULL,
--	POSTTOP0 float NULL,
--	WALL_THICKNESS float NULL,
--	MATERIAL nvarchar(255) NULL,
--	PRICE  float NULL,
--	[CreatedOn] [datetime] NOT NULL,
--	[CreatedBy] [nvarchar](50) NOT NULL,
--	[UpdatedOn] [datetime] NULL,
--	[Updatedby] [nvarchar](50) NULL,
--	[row_version] [timestamp] NOT NULL
--)
--GO

--ALTER TABLE [dbo].Product_Mech  WITH CHECK ADD  CONSTRAINT [fk_PM_SubCategory] FOREIGN KEY(SubCategory)
--REFERENCES [dbo].[SubCategory] ([SubCategory])
--GO

--ALTER TABLE [dbo].Product_Mech CHECK CONSTRAINT [fk_PM_SubCategory]
--GO


--ALTER TABLE [dbo].[SubCategory]  ALTER COLUMN MarkupMultiplier NUMERIC(5,2)
--ALTER TABLE [dbo].[SubCategory]  ALTER COLUMN DiscountMultiplier NUMERIC(5,2)

--ALTER TABLE [AEC_PARAMETER] ADD ParaValue2 VARCHAR(255)

-- ALTER TABLE [dbo].[SubCategory]  ADD MarkupMultiplier NUMERIC(5,2)
--ALTER TABLE [dbo].[SubCategory] DROP COLUMN ExtraChargePecent 
--ALTER TABLE [dbo].[SubCategory] ADD DutiesPecent SMALLINT
--ALTER TABLE [dbo].[SubCategory]  ADD DocumentsMn MONEY
--ALTER TABLE [dbo].[SubCategory]  ADD FreightMn MONEY
--ALTER TABLE [dbo].[SubCategory]  ADD DiscountMarkupPecent SMALLINT
--ALTER TABLE [dbo].[SubCategory]  ADD ConversionMultiplier SMALLINT

------
--ALTER TABLE [dbo].[SubCategoryOptions] ADD DutiesPecent SMALLINT
--ALTER TABLE [dbo].[SubCategoryOptions]  ADD DocumentsMn MONEY
--ALTER TABLE [dbo].[SubCategoryOptions]  ADD FreightMn MONEY
--ALTER TABLE [dbo].[SubCategoryOptions]  ADD DiscountMarkupPecent SMALLINT
--ALTER TABLE [dbo].[SubCategoryOptions]  ADD ConversionMultiplier SMALLINT

--ALTER TABLE [dbo].SubCategoryOptions ADD ExtraChargePecent SMALLINT
--ALTER TABLE [dbo].[SubCategoryOptions]  
-- DROP COLUMN Group_mA

--ALTER TABLE [dbo].[SubCategoryOptions]  
-- DROP COLUMN GroupOS
 
--CREATE TABLE CH_PARAMETER (
--	Id INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
--	ParaName  VARCHAR(255) NOT NULL,
--	ParaValue VARCHAR(255) NOT NULL,
--	ParaDesc  VARCHAR(255) NOT NULL,
--	CONSTRAINT uK_ParaName UNIQUE(ParaName)
--	 )
  
--ALTER TABLE Product ADD CONSTRAINT PK_iD 
--  PRIMARY KEY (Id) 

--ALTER TABLE [Product] DROP COLUMN Category

--ALTER TABLE [Product] ADD CONSTRAINT fk_SubCategory 
--   FOREIGN KEY (Name) REFERENCES SubCategory (SubCategory)

--select distinct name from product 
--where name not in (
--SELECT  [SubCategory]
--FROM [AEC_Illumination].[dbo].[SubCategory]
--)

--DELETE [Product] WHERE NAME IS NULL
--   STU-M 4.700-1M CL.I AND   STU-S 4.700-1M CL.I
-- Fixcture_Name = L1

--CREATE TABLE [dbo].[Product](
--	[Id] [int] IDENTITY(1,1) NOT NULL,
--	[Fixture_Name] [nvarchar](255) NULL,
--	[Name] [nvarchar](255) NULL,
--	[Full_Name] [nvarchar](255) NULL,
--	[LED_Type] [nvarchar](255) NULL,
--	[OPTICAL_SYSTEM] [nvarchar](255) NULL,
--	[Lumen] [nvarchar](255) NULL,
--	[CCT] [nvarchar](255) NULL,
--	[N_OF_MODULES_INSTALLED] [float] NULL,
--	[mA] [float] NULL,
--	[NOMINAL_POWER] [nvarchar](255) NULL,
--	[Class] [nvarchar](255) NULL,
--	[Mounting] [nvarchar](255) NULL,
--	[Price_F] [float] NULL,
--	[Price_DA] [float] NULL,
--	[Price_PLM] [float] NULL,
--	[Category] [nvarchar](50) NOT NULL,
--	[CreatedOn] [datetime] NOT NULL,
--	[CreatedBy] [nvarchar](50) NOT NULL,
--	[UpdatedOn] [datetime] NULL,
--	[Updatedby] [nvarchar](50) NULL,
--	row_version rowversion
--) ON [PRIMARY]
GO

--CREATE TABLE [dbo].[Product](
--	[Id] [int] IDENTITY(1,1) NOT NULL,
--	[Fixture_Name] [nvarchar](255) NULL,
--	[Name] [nvarchar](255) NULL,
--	[Full_Name] [nvarchar](255) NULL,
--	[LED_Type] [nvarchar](255) NULL,
--	[OPTICAL_SYSTEM] [nvarchar](255) NULL,
--	[Lumen] [nvarchar](255) NULL,
--	[CCT] [nvarchar](255) NULL,
--	[N_OF_MODULES_INSTALLED] [float] NULL,
--	[mA] [float] NULL,
--	[NOMINAL_POWER] [nvarchar](255) NULL,
--	[Class] [nvarchar](255) NULL,
--	[Mounting] [nvarchar](255) NULL,
--	[Price_F] [float] NULL,
--	[Price_DA] [float] NULL,
--	[Price_PLM] [float] NULL,
--	[Category] [nvarchar](50) NOT NULL,
--	[CreatedOn] [datetime] NOT NULL,
--	[CreatedBy] [nvarchar](50) NOT NULL,
--	[UpdatedOn] [datetime] NULL,
--	[Updatedby] [nvarchar](50) NULL,
--	row_version rowversion
--) ON [PRIMARY]
--GO


--INSERT INTO [SubCategory]
--SELECT * FROM [zOldAEC].[dbo].[SubCategory]

--INSERT INTO [dbo].[Category]
--SELECT * fROM [zOldAEC].[dbo].[Category]