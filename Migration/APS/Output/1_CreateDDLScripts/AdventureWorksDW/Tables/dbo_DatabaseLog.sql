CREATE TABLE [dbo].[DatabaseLog]
(
	[DatabaseLogID] int NOT NULL,
	[PostTime] datetime NOT NULL,
	[DatabaseUser] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Event] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Schema] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Object] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TSQL] nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
WITH(CLUSTERED INDEX ([DatabaseLogID] ASC), DISTRIBUTION = REPLICATE)
