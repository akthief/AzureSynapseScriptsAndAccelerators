CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimCurrency]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimCurrency',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimCurrency]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimCurrency')

