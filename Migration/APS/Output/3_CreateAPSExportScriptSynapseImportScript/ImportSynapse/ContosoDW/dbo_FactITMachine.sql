INSERT INTO [cso].[FactITMachine]
SELECT * FROM [EXT_cso].[FactITMachine]
OPTION (LABEL = 'Import_Table_cso.FactITMachine')
