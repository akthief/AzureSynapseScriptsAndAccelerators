INSERT INTO [cso].[DimDate]
SELECT * FROM [EXT_cso].[DimDate]
OPTION (LABEL = 'Import_Table_cso.DimDate')
