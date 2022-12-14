CREATE EXTERNAL TABLE [EXT_aw].[DimPromotion]
(
	[PromotionKey] int NOT NULL,
	[PromotionAlternateKey] int NULL,
	[EnglishPromotionName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SpanishPromotionName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FrenchPromotionName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DiscountPct] float(53) NULL,
	[EnglishPromotionType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SpanishPromotionType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FrenchPromotionType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EnglishPromotionCategory] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SpanishPromotionCategory] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FrenchPromotionCategory] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] datetime NOT NULL,
	[EndDate] datetime NULL,
	[MinQty] int NULL,
	[MaxQty] int NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimPromotion',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

