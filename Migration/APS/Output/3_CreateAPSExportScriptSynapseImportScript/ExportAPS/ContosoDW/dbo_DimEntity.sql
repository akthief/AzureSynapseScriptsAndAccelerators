CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimEntity]
WITH (
	LOCATION='/ContosoDW/dbo_DimEntity',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimEntity]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimEntity')

