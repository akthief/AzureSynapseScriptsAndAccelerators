INSERT INTO [aw].[FactFinance]
SELECT * FROM [EXT_aw].[FactFinance]
OPTION (LABEL = 'Import_Table_aw.FactFinance')
