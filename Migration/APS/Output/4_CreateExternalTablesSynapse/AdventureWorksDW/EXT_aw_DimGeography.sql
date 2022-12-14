CREATE EXTERNAL TABLE [EXT_aw].[DimGeography]
(
	[GeographyKey] int NOT NULL,
	[City] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateProvinceCode] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StateProvinceName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CountryRegionCode] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EnglishCountryRegionName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SpanishCountryRegionName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FrenchCountryRegionName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostalCode] nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalesTerritoryKey] int NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimGeography',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

