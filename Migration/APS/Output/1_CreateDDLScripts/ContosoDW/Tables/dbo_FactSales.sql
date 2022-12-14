CREATE TABLE [dbo].[FactSales]
(
	[SalesKey] int NOT NULL,
	[DateKey] datetime NOT NULL,
	[channelKey] int NOT NULL,
	[StoreKey] int NOT NULL,
	[ProductKey] int NOT NULL,
	[PromotionKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[UnitCost] money NOT NULL,
	[UnitPrice] money NOT NULL,
	[SalesQuantity] int NOT NULL,
	[ReturnQuantity] int NOT NULL,
	[ReturnAmount] money NULL,
	[DiscountQuantity] int NULL,
	[DiscountAmount] money NULL,
	[TotalCost] money NOT NULL,
	[SalesAmount] money NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([ProductKey]))
