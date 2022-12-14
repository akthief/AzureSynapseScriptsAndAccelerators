CREATE EXTERNAL TABLE [EXT_aw].[FactResellerSales]
(
	[ProductKey] int NOT NULL,
	[OrderDateKey] int NOT NULL,
	[DueDateKey] int NOT NULL,
	[ShipDateKey] int NOT NULL,
	[ResellerKey] int NOT NULL,
	[EmployeeKey] int NOT NULL,
	[PromotionKey] int NOT NULL,
	[CurrencyKey] int NOT NULL,
	[SalesTerritoryKey] int NOT NULL,
	[SalesOrderNumber] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesOrderLineNumber] tinyint NOT NULL,
	[RevisionNumber] tinyint NULL,
	[OrderQuantity] smallint NULL,
	[UnitPrice] money NULL,
	[ExtendedAmount] money NULL,
	[UnitPriceDiscountPct] float(53) NULL,
	[DiscountAmount] float(53) NULL,
	[ProductStandardCost] money NULL,
	[TotalProductCost] money NULL,
	[SalesAmount] money NULL,
	[TaxAmt] money NULL,
	[Freight] money NULL,
	[CarrierTrackingNumber] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerPONumber] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactResellerSales',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

