INSERT INTO [aw].[FactCallCenter]
SELECT * FROM [EXT_aw].[FactCallCenter]
OPTION (LABEL = 'Import_Table_aw.FactCallCenter')
