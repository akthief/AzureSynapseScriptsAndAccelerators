INSERT INTO [aw].[DimGeography]
SELECT * FROM [EXT_aw].[DimGeography]
OPTION (LABEL = 'Import_Table_aw.DimGeography')
