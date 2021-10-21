CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimAccount]
WITH (
	LOCATION='/ContosoDW/dbo_DimAccount',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimAccount]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimAccount')

