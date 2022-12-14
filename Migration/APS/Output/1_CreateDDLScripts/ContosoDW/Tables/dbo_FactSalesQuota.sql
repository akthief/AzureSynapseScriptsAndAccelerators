CREATE TABLE [dbo].[FactSalesQuota]
(
	[SalesQuotaKey] int NOT NULL,
	[ChannelKey] int NOT NULL,
	[StoreKey] int NOT NULL,
	[ProductKey] int NOT NULL,
	[DateKey] datetime NOT NULL,
	[CurrencyKey] int NOT NULL,
	[ScenarioKey] int NOT NULL,
	[SalesQuantityQuota] money NOT NULL,
	[SalesAmountQuota] money NOT NULL,
	[GrossMarginQuota] money NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([ProductKey]))
