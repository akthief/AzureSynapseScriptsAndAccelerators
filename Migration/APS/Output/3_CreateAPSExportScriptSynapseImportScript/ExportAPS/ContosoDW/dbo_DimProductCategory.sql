CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimProductCategory]
WITH (
	LOCATION='/ContosoDW/dbo_DimProductCategory',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimProductCategory]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimProductCategory')

