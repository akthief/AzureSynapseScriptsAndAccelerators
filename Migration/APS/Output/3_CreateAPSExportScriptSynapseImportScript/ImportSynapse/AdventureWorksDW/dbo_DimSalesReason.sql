INSERT INTO [aw].[DimSalesReason]
SELECT * FROM [EXT_aw].[DimSalesReason]
OPTION (LABEL = 'Import_Table_aw.DimSalesReason')
