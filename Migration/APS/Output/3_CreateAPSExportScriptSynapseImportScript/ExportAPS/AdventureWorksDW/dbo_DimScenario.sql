CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimScenario]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimScenario',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimScenario]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimScenario')

