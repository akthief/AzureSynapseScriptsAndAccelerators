CREATE TABLE cso.[DimProductSubcategory]
(
	[ProductSubcategoryKey] int NOT NULL,
	[ProductSubcategoryLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductSubcategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProductSubcategoryDescription] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductCategoryKey] int NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)

