CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimProduct]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimProduct',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimProduct]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimProduct')

