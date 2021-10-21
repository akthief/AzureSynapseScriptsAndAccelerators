CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimGeography]
WITH (
	LOCATION='/ContosoDW/dbo_DimGeography',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimGeography]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimGeography')

