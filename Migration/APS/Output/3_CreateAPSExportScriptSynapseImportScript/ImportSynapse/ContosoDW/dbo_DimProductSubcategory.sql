INSERT INTO [cso].[DimProductSubcategory]
SELECT * FROM [EXT_cso].[DimProductSubcategory]
OPTION (LABEL = 'Import_Table_cso.DimProductSubcategory')
