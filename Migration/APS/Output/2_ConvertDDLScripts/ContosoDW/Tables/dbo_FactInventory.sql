CREATE TABLE cso.[FactInventory]
(
	[InventoryKey] int NOT NULL,
	[DateKey] datetime NOT NULL,
	[StoreKey] int NOT NULL,
	[ProductKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[OnHandQuantity] int NOT NULL,
	[OnOrderQuantity] int NOT NULL,
	[SafetyStockQuantity] int NULL,
	[UnitCost] money NOT NULL,
	[DaysInStock] int NULL,
	[MinDayInStock] int NULL,
	[MaxDayInStock] int NULL,
	[Aging] int NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([ProductKey]))

