CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimCustomer]
WITH (
	LOCATION='/ContosoDW/dbo_DimCustomer',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimCustomer]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimCustomer')

