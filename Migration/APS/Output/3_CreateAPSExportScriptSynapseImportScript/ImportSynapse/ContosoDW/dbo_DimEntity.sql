INSERT INTO [cso].[DimEntity]
SELECT * FROM [EXT_cso].[DimEntity]
OPTION (LABEL = 'Import_Table_cso.DimEntity')
