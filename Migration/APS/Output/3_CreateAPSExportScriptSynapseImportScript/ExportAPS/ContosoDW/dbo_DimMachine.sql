CREATE EXTERNAL TABLE [ContosoDW].[EXT_cso].[DimMachine]
WITH (
	LOCATION='/ContosoDW/dbo_DimMachine',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [ContosoDW].[dbo].[DimMachine]
OPTION (LABEL = 'Export_Table_ContosoDW.dbo.DimMachine')

