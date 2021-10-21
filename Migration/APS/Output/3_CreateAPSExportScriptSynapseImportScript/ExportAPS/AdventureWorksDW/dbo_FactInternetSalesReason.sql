CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[FactInternetSalesReason]
WITH (
	LOCATION='/AdventureWorksDW/dbo_FactInternetSalesReason',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[FactInternetSalesReason]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.FactInternetSalesReason')

