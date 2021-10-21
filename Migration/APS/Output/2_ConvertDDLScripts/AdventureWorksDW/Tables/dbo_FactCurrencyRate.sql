CREATE TABLE aw.[FactCurrencyRate]
(
	[CurrencyKey] int NOT NULL,
	[DateKey] int NOT NULL,
	[AverageRate] float(53) NOT NULL,
	[EndOfDayRate] float(53) NOT NULL
)
WITH(CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = REPLICATE)

