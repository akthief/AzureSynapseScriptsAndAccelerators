CREATE TABLE [dbo].[DimPromotion]
(
	[PromotionKey] int NOT NULL,
	[PromotionLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PromotionName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PromotionDescription] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DiscountPercent] float(53) NULL,
	[PromotionType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PromotionCategory] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] datetime NOT NULL,
	[EndDate] datetime NULL,
	[MinQuantity] int NULL,
	[MaxQuantity] int NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)
