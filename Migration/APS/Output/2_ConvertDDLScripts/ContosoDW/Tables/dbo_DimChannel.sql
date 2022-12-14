CREATE TABLE cso.[DimChannel]
(
	[ChannelKey] int NOT NULL,
	[ChannelLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ChannelName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ChannelDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)

