CREATE EXTERNAL TABLE [EXT_cso].[DimAccount]
(
	[AccountKey] int NOT NULL,
	[ParentAccountKey] int NULL,
	[AccountLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Operator] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomMembers] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ValueType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomMemberOptions] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimAccount',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

