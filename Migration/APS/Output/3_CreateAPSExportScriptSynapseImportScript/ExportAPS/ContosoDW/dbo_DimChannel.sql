CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimChannel]
WITH (
	LOCATION='/ContosoDW/dbo_DimChannel',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimChannel]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimChannel')

