INSERT INTO [cso].[DimMachine]
SELECT * FROM [EXT_cso].[DimMachine]
OPTION (LABEL = 'Import_Table_cso.DimMachine')
