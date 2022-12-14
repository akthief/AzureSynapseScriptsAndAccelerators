CREATE EXTERNAL TABLE [EXT_cso].[FactITSLA]
(
	[ITSLAkey] int NOT NULL,
	[DateKey] datetime NOT NULL,
	[StoreKey] int NOT NULL,
	[MachineKey] int NOT NULL,
	[OutageKey] int NOT NULL,
	[OutageStartTime] datetime NOT NULL,
	[OutageEndTime] datetime NOT NULL,
	[DownTime] int NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_FactITSLA',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

