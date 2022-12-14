CREATE EXTERNAL TABLE [EXT_aw].[AdventureWorksDWBuildVersion]
(
	[DBVersion] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VersionDate] datetime NOT NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_AdventureWorksDWBuildVersion',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

