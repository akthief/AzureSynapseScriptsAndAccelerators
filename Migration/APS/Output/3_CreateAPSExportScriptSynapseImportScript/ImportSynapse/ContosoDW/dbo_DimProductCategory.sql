INSERT INTO [cso].[DimProductCategory]
SELECT * FROM [EXT_cso].[DimProductCategory]
OPTION (LABEL = 'Import_Table_cso.DimProductCategory')
