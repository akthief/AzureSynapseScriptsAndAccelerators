INSERT INTO [cso].[FactOnlineSales]
SELECT * FROM [EXT_cso].[FactOnlineSales]
OPTION (LABEL = 'Import_Table_cso.FactOnlineSales')
