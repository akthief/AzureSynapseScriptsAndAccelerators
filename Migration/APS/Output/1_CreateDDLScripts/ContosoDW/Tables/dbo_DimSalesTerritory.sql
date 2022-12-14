CREATE TABLE [dbo].[DimSalesTerritory]
(
	[SalesTerritoryKey] int NOT NULL,
	[GeographyKey] int NOT NULL,
	[SalesTerritoryLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalesTerritoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesTerritoryRegion] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesTerritoryCountry] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesTerritoryGroup] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalesTerritoryLevel] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalesTerritoryManager] int NULL,
	[StartDate] datetime NULL,
	[EndDate] datetime NULL,
	[Status] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)
