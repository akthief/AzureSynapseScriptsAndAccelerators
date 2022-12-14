CREATE EXTERNAL TABLE [EXT_aw].[DimProductCategory]
(
	[ProductCategoryKey] int NOT NULL,
	[ProductCategoryAlternateKey] int NULL,
	[EnglishProductCategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SpanishProductCategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FrenchProductCategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimProductCategory',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

