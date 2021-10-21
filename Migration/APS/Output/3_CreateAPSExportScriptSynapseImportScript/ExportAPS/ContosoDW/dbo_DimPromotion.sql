CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimPromotion]
WITH (
	LOCATION='/ContosoDW/dbo_DimPromotion',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimPromotion]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimPromotion')

