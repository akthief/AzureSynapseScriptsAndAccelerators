CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimStore]
WITH (
	LOCATION='/ContosoDW/dbo_DimStore',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimStore]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimStore')

