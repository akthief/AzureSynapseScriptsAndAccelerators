INSERT INTO [cso].[DimScenario]
SELECT * FROM [EXT_cso].[DimScenario]
OPTION (LABEL = 'Import_Table_cso.DimScenario')
