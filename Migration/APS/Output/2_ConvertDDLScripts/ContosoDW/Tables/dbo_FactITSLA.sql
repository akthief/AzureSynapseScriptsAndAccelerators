CREATE TABLE cso.[FactITSLA]
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
WITH(HEAP, DISTRIBUTION = HASH([MachineKey]))

