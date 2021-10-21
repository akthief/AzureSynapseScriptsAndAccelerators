CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[FactResellerSales]
WITH (
	LOCATION='/AdventureWorksDW/dbo_FactResellerSales',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[FactResellerSales]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.FactResellerSales')

