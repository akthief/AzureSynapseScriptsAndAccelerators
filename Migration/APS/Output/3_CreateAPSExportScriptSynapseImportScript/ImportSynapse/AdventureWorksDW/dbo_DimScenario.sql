INSERT INTO [aw].[DimScenario]
SELECT * FROM [EXT_aw].[DimScenario]
OPTION (LABEL = 'Import_Table_aw.DimScenario')
