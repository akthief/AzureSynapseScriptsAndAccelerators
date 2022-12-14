CREATE TABLE [dbo].[DimOutage]
(
	[OutageKey] int NOT NULL,
	[OutageLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageDescription] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageTypeDescription] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageSubType] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OutageSubTypeDescription] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)
