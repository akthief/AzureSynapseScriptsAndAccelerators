CREATE EXTERNAL TABLE [EXT_aw].[FactInternetSalesReason]
(
	[SalesOrderNumber] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SalesOrderLineNumber] tinyint NOT NULL,
	[SalesReasonKey] int NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactInternetSalesReason',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

