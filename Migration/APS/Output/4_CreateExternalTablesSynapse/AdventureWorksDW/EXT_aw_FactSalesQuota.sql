CREATE EXTERNAL TABLE [EXT_aw].[FactSalesQuota]
(
	[SalesQuotaKey] int NOT NULL,
	[EmployeeKey] int NOT NULL,
	[DateKey] int NOT NULL,
	[CalendarYear] smallint NOT NULL,
	[CalendarQuarter] tinyint NOT NULL,
	[SalesAmountQuota] money NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactSalesQuota',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

