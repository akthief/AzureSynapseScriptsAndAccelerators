INSERT INTO [cso].[FactSalesQuota]
SELECT * FROM [EXT_cso].[FactSalesQuota]
OPTION (LABEL = 'Import_Table_cso.FactSalesQuota')
