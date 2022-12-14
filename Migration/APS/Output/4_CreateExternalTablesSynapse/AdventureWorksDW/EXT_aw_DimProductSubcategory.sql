CREATE EXTERNAL TABLE [EXT_aw].[DimProductSubcategory]
(
	[ProductSubcategoryKey] int NOT NULL,
	[ProductSubcategoryAlternateKey] int NULL,
	[EnglishProductSubcategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SpanishProductSubcategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FrenchProductSubcategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProductCategoryKey] int NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimProductSubcategory',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

