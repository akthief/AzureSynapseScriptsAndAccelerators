CREATE EXTERNAL TABLE [EXT_aw].[DimCurrency]
(
	[CurrencyKey] int NOT NULL,
	[CurrencyAlternateKey] nchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrencyName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimCurrency',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

