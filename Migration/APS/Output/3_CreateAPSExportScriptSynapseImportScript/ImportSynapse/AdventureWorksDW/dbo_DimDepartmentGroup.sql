INSERT INTO [aw].[DimDepartmentGroup]
SELECT * FROM [EXT_aw].[DimDepartmentGroup]
OPTION (LABEL = 'Import_Table_aw.DimDepartmentGroup')
