CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimEmployee]
WITH (
	LOCATION='/ContosoDW/dbo_DimEmployee',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimEmployee]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimEmployee')

