CREATE TABLE cso.[DimCustomer]
(
	[CustomerKey] int NOT NULL,
	[GeographyKey] int NOT NULL,
	[CustomerLabel] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Title] nvarchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MiddleName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NameStyle] bit NULL,
	[BirthDate] datetime NULL,
	[MaritalStatus] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Suffix] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Gender] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailAddress] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[YearlyIncome] money NULL,
	[TotalChildren] tinyint NULL,
	[NumberChildrenAtHome] tinyint NULL,
	[Education] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Occupation] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HouseOwnerFlag] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NumberCarsOwned] tinyint NULL,
	[AddressLine1] nvarchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AddressLine2] nvarchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Phone] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateFirstPurchase] datetime NULL,
	[CustomerType] nvarchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CompanyName] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ETLLoadID] int NULL,
	[LoadDate] datetime NULL,
	[UpdateDate] datetime NULL
)
WITH(HEAP, DISTRIBUTION = ROUND_ROBIN)

