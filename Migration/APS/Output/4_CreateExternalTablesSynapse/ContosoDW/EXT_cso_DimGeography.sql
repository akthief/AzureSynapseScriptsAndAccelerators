CREATE EXTERNAL TABLE [EXT_cso].[DimGeography]
(
	[GeographyKey] int NOT NULL,
	[GeographyType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContinentName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CityName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateProvinceName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RegionCountryName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimGeography',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

