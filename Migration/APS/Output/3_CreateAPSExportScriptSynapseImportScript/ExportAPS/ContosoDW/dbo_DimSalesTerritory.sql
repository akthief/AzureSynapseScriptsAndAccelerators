CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimSalesTerritory]
WITH (
	LOCATION='/ContosoDW/dbo_DimSalesTerritory',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimSalesTerritory]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimSalesTerritory')

