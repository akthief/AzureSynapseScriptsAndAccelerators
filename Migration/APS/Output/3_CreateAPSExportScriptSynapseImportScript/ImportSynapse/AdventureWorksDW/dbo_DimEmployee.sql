INSERT INTO [aw].[DimEmployee]
SELECT * FROM [EXT_aw].[DimEmployee]
OPTION (LABEL = 'Import_Table_aw.DimEmployee')
