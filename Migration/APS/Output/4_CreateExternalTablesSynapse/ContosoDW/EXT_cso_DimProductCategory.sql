CREATE EXTERNAL TABLE [EXT_cso].[DimProductCategory]
(
	[ProductCategoryKey] int NOT NULL,
	[ProductCategoryLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductCategoryName] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProductCategoryDescription] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimProductCategory',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

