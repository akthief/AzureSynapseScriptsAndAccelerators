INSERT INTO [cso].[DimCurrency]
SELECT * FROM [EXT_cso].[DimCurrency]
OPTION (LABEL = 'Import_Table_cso.DimCurrency')
