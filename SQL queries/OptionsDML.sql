
 --SELECT * FROM [SubCategoryOptions]
-- insert [SubCategoryOptions]
--UPDATE [AEC_Illumination].[dbo].[Product]
--SET name = 'STYLO' where name LIKE '%STYLO%' 

-- TRUNCATE TABLE [SubCategoryOptions]
--SELECT * FROM [SubCategoryOptions]

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT 
--	[Name] ,[Price] ,[Category],'ITALO 2',
--	[Description] , GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R11_ITALO 2_Options$']
--WHERE Category IS NOT NULL
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT 
--	[Name] ,[Price] ,[Category],'ITALO 3',
--	[Description] , GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R18_ITALO 3 - Options$']
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Name]  ,[Price] ,[Category] ,'STYLO',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R23_STYLO VP STA_Options$']
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Name]  ,[Price] ,[Category]  ,'QDROME',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R24_Q-DROME TP STU-Options$']
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Name]  ,[Price] ,[Category] ,'I-TRON ZERO',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R25_I-TRON ZERO STU - Options$']
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Name]  ,[Price] ,[Category] ,'I-TRON 1',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R26_I-TRON 1 STU - Options$']
--go

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Nane]  ,[Price]  ,[Category] ,'I-TRON 1 B',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R28_I-TRON 1 B STU - Options$']
--GO

--INSERT INTO [dbo].[SubCategoryOptions]
--    ([Name] ,[Price],[OptionType],[ProdSubCategory],
--	[Description],[CreatedOn],[CreatedBy])
--SELECT [Name] ,[Price] ,[Category],'ITALO 1',
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R6_ITALO 1- Options$']
--GO



--SELECT [Name] ,[Price] ,[Category],[Description] 
--FROM [zOldAEC].[dbo].['R11_ITALO 2_Options$']
--GO
--SELECT [Name] ,[Price] ,[Category]  ,[Description]
--FROM [zOldAEC].[dbo].['R18_ITALO 3 - Options$']
--GO
--SELECT [Name]  ,[Price] ,[Category] ,
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R23_STYLO VP STA_Options$']
--GO

--SELECT [Name]  ,[Price] ,[Category]  ,
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R24_Q-DROME TP STU-Options$']
--GO

--SELECT [Name]  ,[Price] ,[Category] ,
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R25_I-TRON ZERO STU - Options$']
--GO

--SELECT [Name]  ,[Price] ,[Category] ,
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R26_I-TRON 1 STU - Options$']
go
--SELECT [Nane]  ,[Price]  ,[Category] ,
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R28_I-TRON 1 B STU - Options$']
--GO

--SELECT [Name] ,[Price] ,[Category],
--	[Description], GETDATE(), 'Data Extraction'
--FROM [zOldAEC].[dbo].['R6_ITALO 1- Options$']
--GO









