CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimOutage]
WITH (
	LOCATION='/ContosoDW/dbo_DimOutage',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimOutage]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimOutage')

