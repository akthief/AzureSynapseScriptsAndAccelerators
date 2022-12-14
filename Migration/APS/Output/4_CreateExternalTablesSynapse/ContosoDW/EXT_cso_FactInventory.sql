CREATE EXTERNAL TABLE [EXT_cso].[FactInventory]
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
 WITH (  
                LOCATION='/ContosoDW/dbo_FactInventory',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

