CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[FactSalesQuota]
WITH (
	LOCATION='/AdventureWorksDW/dbo_FactSalesQuota',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[FactSalesQuota]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.FactSalesQuota')

