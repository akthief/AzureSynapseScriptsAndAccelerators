CREATE TABLE [dbo].[FactOnlineSales]
(
	[OnlineSalesKey] int NOT NULL,
	[DateKey] datetime NOT NULL,
	[StoreKey] int NOT NULL,
	[ProductKey] int NOT NULL,
	[PromotionKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[CustomerKey] int NOT NULL,
	[SalesOrderNumber] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesOrderLineNumber] int NULL,
	[SalesQuantity] int NOT NULL,
	[SalesAmount] money NOT NULL,
	[ReturnQuantity] int NOT NULL,
	[ReturnAmount] money NULL,
	[DiscountQuantity] int NULL,
	[DiscountAmount] money NULL,
	[TotalCost] money NOT NULL,
	[UnitCost] money NULL,
	[UnitPrice] money NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([ProductKey]))
