INSERT INTO [aw].[DimProductCategory]
SELECT * FROM [EXT_aw].[DimProductCategory]
OPTION (LABEL = 'Import_Table_aw.DimProductCategory')
