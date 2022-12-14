CREATE EXTERNAL TABLE [EXT_cso].[DimCurrency]
(
	[CurrencyKey] int NOT NULL,
	[CurrencyLabel] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrencyName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CurrencyDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimCurrency',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

