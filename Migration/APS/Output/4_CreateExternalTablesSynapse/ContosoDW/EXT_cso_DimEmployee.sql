CREATE EXTERNAL TABLE [EXT_cso].[DimEmployee]
(
	[EmployeeKey] int NOT NULL,
	[ParentEmployeeKey] int NULL,
	[FirstName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MiddleName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Title] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HireDate] datetime NULL,
	[BirthDate] datetime NULL,
	[EmailAddress] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaritalStatus] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmergencyContactName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmergencyContactPhone] nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalariedFlag] bit NULL,
	[Gender] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PayFrequency] tinyint NULL,
	[BaseRate] money NULL,
	[VacationHours] smallint NULL,
	[CurrentFlag] bit NOT NULL,
	[SalesPersonFlag] bit NOT NULL,
	[DepartmentName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[StartDate] datetime NULL,
	[EndDate] datetime NULL,
	[Status] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
 WITH (  
                LOCATION='/ContosoDW/dbo_DimEmployee',  
                DATA_SOURCE = AZURE_STAGING_STORAGE,  
                FILE_FORMAT = DelimitedFileFormat
)

