INSERT INTO [aw].[DimProduct]
SELECT * FROM [EXT_aw].[DimProduct]
OPTION (LABEL = 'Import_Table_aw.DimProduct')
