INSERT INTO [aw].[FactResellerSales]
SELECT * FROM [EXT_aw].[FactResellerSales]
OPTION (LABEL = 'Import_Table_aw.FactResellerSales')
