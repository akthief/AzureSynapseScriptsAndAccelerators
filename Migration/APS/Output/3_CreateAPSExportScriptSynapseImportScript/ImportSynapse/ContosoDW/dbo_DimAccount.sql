INSERT INTO [cso].[DimAccount]
SELECT * FROM [EXT_cso].[DimAccount]
OPTION (LABEL = 'Import_Table_cso.DimAccount')
