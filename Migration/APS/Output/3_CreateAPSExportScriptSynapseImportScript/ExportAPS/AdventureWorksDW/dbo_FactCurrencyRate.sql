CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[FactCurrencyRate]
WITH (
	LOCATION='/AdventureWorksDW/dbo_FactCurrencyRate',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[FactCurrencyRate]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.FactCurrencyRate')

