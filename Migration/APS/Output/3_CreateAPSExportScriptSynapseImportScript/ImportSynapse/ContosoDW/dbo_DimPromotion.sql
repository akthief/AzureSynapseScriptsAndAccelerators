INSERT INTO [cso].[DimPromotion]
SELECT * FROM [EXT_cso].[DimPromotion]
OPTION (LABEL = 'Import_Table_cso.DimPromotion')
