--- DISCOUNT --------------
UPDATE A   -- (73 rows affected)
--SET A.DiscountMultiplier = R.[Percent]
--FROM [x_Discount$] R, SubCategory A 
--WHERE R.SubCategory = A.SubCategory

--DELETE X_Discount$ WHERE SubCategory = 'TOWER '
--DELETE X_Discount$ WHERE SubCategory = 'DISCHARGE LAMPS LUMINAIRES '

--DELETE X_Discount$ WHERE SubCategory = 'POLES AND ACCESSORIES'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE  cATEGORY = 'POLES'

--DELETE X_Discount$ WHERE SubCategory = 'GALILEO TUNNEL'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE  cATEGORY = 'TUNNEL'

--DELETE X_Discount$ WHERE SubCategory = 'LANTERNS/RELAMPING KITS'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE  cATEGORY = 'RELAMPING'

--DELETE X_Discount$ WHERE SubCategory = 'GALILEO OUTDOOR'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE subCategory like 'GALILEO%' 
--  AND cATEGORY = 'STREET_URBAN LIGHTING_FLOODLIGHT'

--DELETE X_Discount$ WHERE SubCategory = 'MASTER'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.56 FROM SubCategory WHERE subCategory like 'MASTER%'

--DELETE X_Discount$ WHERE SubCategory = 'RX2 POLES'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE subCategory like 'POLES RX2 SERIE'

--DELETE X_Discount$ WHERE SubCategory = 'GA/GH/GQ1'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.54 FROM SubCategory WHERE subCategory in ('GA', 'GH', 'GQ1')

--DELETE X_Discount$ WHERE SubCategory = 'ECORAYS'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.6 FROM SubCategory WHERE subCategory like 'ECORAYS%'

--DELETE X_Discount$ WHERE SubCategory = 'BOLLARD'

--DELETE X_Discount$ WHERE SubCategory = 'ARTELYS'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.56 FROM SubCategory WHERE subCategory like 'ARTELYS%'

--DELETE X_Discount$ WHERE SubCategory = 'LEDin'
--UPDATE X_Discount$ SET SubCategory = 'A2 LED' 
--WHERE SubCategory like 'A2'

--DELETE X_Discount$ WHERE SubCategory = 'ITALO'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.6 FROM SubCategory WHERE Category LIKE 'ITALO%'

--DELETE X_Discount$ WHERE SubCategory LIKE '%MOD%'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.56 FROM SubCategory WHERE SubCategory LIKE 'MOD 2.0%'

--DELETE X_Discount$ WHERE SubCategory = 'ITALO BASIC'
--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.6 FROM SubCategory WHERE Category = 'ITALO BASIC'

--INSERT INTO [dbo].[X_Discount$] ([SubCategory],[Percent])
--SELECT SubCategory, 0.6 FROM SubCategory WHERE SubCategory LIKE 'I-TRON ZERO%'

--I-ITRON
--I-ITRON B
--UPDATE X_Discount$ SET SubCategory = 'I-TRON 1' 
--WHERE SubCategory like 'I-ITRON'

--UPDATE X_Discount$ SET SubCategory = 'I-TRON 1 B' 
--WHERE SubCategory like 'I-ITRON B'

--UPDATE X_Discount$ SET SubCategory = 'I-TRON 1 B' 
--WHERE SubCategory like 'ITRON B'

--UPDATE X_Discount$ SET SubCategory = 'I-TRON 1' 
--WHERE SubCategory like 'ITRON'

--UPDATE X_Discount$ SET SubCategory = 'QDROME' 
--WHERE SubCategory like 'Q DROME'

--UPDATE X_Discount$ SET SubCategory = 'I-' + SubCategory
--WHERE SubCategory like 'ITRON%'

--SELECT B.[SubCategory],B.[Percent], A.SubCategory --, SubCategory
--FROM [AEC_Illumination].[dbo].[X_Discount$] B
--     LEFT JOIN SubCategory A ON
--		  B.SubCategory LIKE ( CONCAT('%', CONCAT(A.SubCategory, '%')) )
--		  OR A.SubCategory LIKE ( CONCAT('%', CONCAT(B.SubCategory, '%')) )
--ORDER BY A.SubCategory

--SELECT * FROM [dbo].[X_Discount$] 
----WHERE SubCategory IS NOT NULL
--ORDER BY 1
--SELECT B.[SubCategory],B.[Percent], A.SubCategory, SubCategory
--FROM [AEC_Illumination].[dbo].[X_Discount$] B
--     LEFT JOIN SubCategory A ON
--		  B.SubCategory LIKE ( CONCAT('%', CONCAT(A.SubCategory, '%')) )
--		  --OR A.SubCategory LIKE ( CONCAT('%', CONCAT(B.SubCategory, '%')) )
--ORDER BY A.SubCategory