CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimSalesReason]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimSalesReason',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimSalesReason]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimSalesReason')

