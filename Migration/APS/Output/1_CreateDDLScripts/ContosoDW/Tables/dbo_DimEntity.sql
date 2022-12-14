CREATE TABLE [dbo].[DimEntity]
(
	[EntityKey] int NOT NULL,
	[EntityLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentEntityKey] int NULL,
	[ParentEntityLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EntityName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EntityDescription] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EntityType] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] datetime NULL,
	[EndDate] datetime NULL,
	[Status] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = HASH([EntityKey]))
