CREATE EXTERNAL TABLE [EXT_cso].[DimScenario]
(
	[ScenarioKey] int NOT NULL,
	[ScenarioLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ScenarioName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ScenarioDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimScenario',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

