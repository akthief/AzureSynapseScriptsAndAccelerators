INSERT INTO [aw].[FactInternetSales]
SELECT * FROM [EXT_aw].[FactInternetSales]
OPTION (LABEL = 'Import_Table_aw.FactInternetSales')
