INSERT INTO [cso].[DimEmployee]
SELECT * FROM [EXT_cso].[DimEmployee]
OPTION (LABEL = 'Import_Table_cso.DimEmployee')
