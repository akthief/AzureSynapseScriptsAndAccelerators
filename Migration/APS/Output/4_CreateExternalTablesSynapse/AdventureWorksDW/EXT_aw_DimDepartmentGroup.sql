CREATE EXTERNAL TABLE [EXT_aw].[DimDepartmentGroup]
(
	[DepartmentGroupKey] int NOT NULL,
	[ParentDepartmentGroupKey] int NULL,
	[DepartmentGroupName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
 WITH (  
                LOCATION='/AdventureWorksDW/dbo_DimDepartmentGroup',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

