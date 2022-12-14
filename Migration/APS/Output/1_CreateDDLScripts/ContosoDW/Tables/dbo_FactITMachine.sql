CREATE TABLE [dbo].[FactITMachine]
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
WITH(HEAP, DISTRIBUTION = HASH([MachineKey]))
