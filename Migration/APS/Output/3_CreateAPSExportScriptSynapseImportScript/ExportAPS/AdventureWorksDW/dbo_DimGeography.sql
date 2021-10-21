CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimGeography]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimGeography',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimGeography]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimGeography')

