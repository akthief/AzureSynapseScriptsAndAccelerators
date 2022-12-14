CREATE EXTERNAL TABLE [EXT_aw].[FactCurrencyRate]
(
	[CurrencyKey] int NOT NULL,
	[DateKey] int NOT NULL,
	[AverageRate] float(53) NOT NULL,
	[EndOfDayRate] float(53) NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactCurrencyRate',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

