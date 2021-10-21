CREATE EXTERNAL TABLE [AdventureWorksDW].[EXT_aw].[DimDepartmentGroup]
WITH (
	LOCATION='/AdventureWorksDW/dbo_DimDepartmentGroup',
	DATA_SOURCE = AZURE_STAGING_STORAGE,
	FILE_FORMAT = DelimitedFileFormat
	)
AS 
SELECT * FROM [AdventureWorksDW].[dbo].[DimDepartmentGroup]
OPTION (LABEL = 'Export_Table_AdventureWorksDW.dbo.DimDepartmentGroup')

