INSERT INTO [aw].[DimReseller]
SELECT * FROM [EXT_aw].[DimReseller]
OPTION (LABEL = 'Import_Table_aw.DimReseller')
