CREATE EXTERNAL TABLE [EXT_aw].[DimScenario]
(
	[ScenarioKey] int NOT NULL,
	[ScenarioName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimScenario',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

