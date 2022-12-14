CREATE EXTERNAL TABLE [EXT_cso].[FactStrategyPlan]
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
 WITH (  
                LOCATION='/ContosoDW/dbo_FactStrategyPlan',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

