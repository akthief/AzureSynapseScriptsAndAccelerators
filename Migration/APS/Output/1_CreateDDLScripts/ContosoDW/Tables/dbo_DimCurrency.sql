CREATE TABLE [dbo].[DimCurrency]
(
	[CurrencyKey] int NOT NULL,
	[CurrencyLabel] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrencyName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrencyDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)
