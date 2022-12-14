CREATE EXTERNAL TABLE [EXT_cso].[FactITMachine]
(
	[ITMachinekey] int NOT NULL,
	[MachineKey] int NOT NULL,
	[Datekey] datetime NOT NULL,
	[CostAmount] money NULL,
	[CostType] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_FactITMachine',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

