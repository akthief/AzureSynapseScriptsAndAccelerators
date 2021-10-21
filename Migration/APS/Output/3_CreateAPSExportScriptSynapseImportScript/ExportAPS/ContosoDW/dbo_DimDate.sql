CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimDate]
WITH (
	LOCATION='/ContosoDW/dbo_DimDate',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimDate]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimDate')

