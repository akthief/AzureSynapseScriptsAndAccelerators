INSERT INTO [aw].[AdventureWorksDWBuildVersion]
SELECT * FROM [EXT_aw].[AdventureWorksDWBuildVersion]
OPTION (LABEL = 'Import_Table_aw.AdventureWorksDWBuildVersion')
