CREATE EXTERNAL TABLE [EXT_aw].[FactInternetSales]
(
	[ProductKey] int NOT NULL,
	[OrderDateKey] int NOT NULL,
	[DueDateKey] int NOT NULL,
	[ShipDateKey] int NOT NULL,
	[CustomerKey] int NOT NULL,
	[PromotionKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[SalesTerritoryKey] int NOT NULL,
	[SalesOrderNumber] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesOrderLineNumber] tinyint NOT NULL,
	[RevisionNumber] tinyint NOT NULL,
	[OrderQuantity] smallint NOT NULL,
	[UnitPrice] money NOT NULL,
	[ExtendedAmount] money NOT NULL,
	[UnitPriceDiscountPct] float(53) NOT NULL,
	[DiscountAmount] float(53) NOT NULL,
	[ProductStandardCost] money NOT NULL,
	[TotalProductCost] money NOT NULL,
	[SalesAmount] money NOT NULL,
	[TaxAmt] money NOT NULL,
	[Freight] money NOT NULL,
	[CarrierTrackingNumber] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerPONumber] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactInternetSales',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

