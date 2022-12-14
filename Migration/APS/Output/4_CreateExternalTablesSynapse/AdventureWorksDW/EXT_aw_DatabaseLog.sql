CREATE EXTERNAL TABLE [EXT_aw].[DatabaseLog]
(
	[DatabaseLogID] int NOT NULL,
	[PostTime] datetime NOT NULL,
	[DatabaseUser] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Event] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Schema] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Object] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TSQL] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DatabaseLog',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

