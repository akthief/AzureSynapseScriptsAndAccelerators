CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimProductSubcategory]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimProductSubcategory',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimProductSubcategory]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimProductSubcategory')

