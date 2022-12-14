CREATE EXTERNAL TABLE [EXT_cso].[FactSalesQuota]
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
 WITH (  
                LOCATION='/ContosoDW/dbo_FactSalesQuota',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

