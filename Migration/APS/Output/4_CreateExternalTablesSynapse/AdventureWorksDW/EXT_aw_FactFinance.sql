CREATE EXTERNAL TABLE [EXT_aw].[FactFinance]
(
	[FinanceKey] int NOT NULL,
	[DateKey] int NOT NULL,
	[OrganizationKey] int NOT NULL,
	[DepartmentGroupKey] int NOT NULL,
	[ScenarioKey] int NOT NULL,
	[AccountKey] int NOT NULL,
	[Amount] float(53) NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_FactFinance',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

