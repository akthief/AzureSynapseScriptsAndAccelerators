INSERT INTO [aw].[DatabaseLog]
SELECT * FROM [EXT_aw].[DatabaseLog]
OPTION (LABEL = 'Import_Table_aw.DatabaseLog')
