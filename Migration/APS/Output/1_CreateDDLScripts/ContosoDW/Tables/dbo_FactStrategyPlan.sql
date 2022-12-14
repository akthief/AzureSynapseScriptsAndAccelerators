CREATE TABLE [dbo].[FactStrategyPlan]
(
	[StrategyPlanKey] int NOT NULL,
	[Datekey] datetime NOT NULL,
	[EntityKey] int NOT NULL,
	[ScenarioKey] int NOT NULL,
	[AccountKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[ProductCategoryKey] int NULL,
	[Amount] money NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([EntityKey]))
