/* 3B. Option B. Drop Orginal Table and Rename Desired Table Name as Orginal Table Name. */
-- Code Generated at 08/02/2021 13:57:50
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimAccount','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimAccount
RENAME OBJECT edw.DimAccount_Desired to DimAccount
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCurrency','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCurrency
RENAME OBJECT edw.DimCurrency_Desired to DimCurrency
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCustomer','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCustomer
RENAME OBJECT edw.DimCustomer_Desired to DimCustomer
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDate','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDate
RENAME OBJECT edw.DimDate_Desired to DimDate
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDepartmentGroup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup
RENAME OBJECT edw.DimDepartmentGroup_Desired to DimDepartmentGroup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimGeography','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimGeography
RENAME OBJECT edw.DimGeography_Desired to DimGeography
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimOrganization','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimOrganization
RENAME OBJECT edw.DimOrganization_Desired to DimOrganization
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductCategory','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductCategory
RENAME OBJECT edw.DimProductCategory_Desired to DimProductCategory
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductSubcategory','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductSubcategory
RENAME OBJECT edw.DimProductSubcategory_Desired to DimProductSubcategory
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimPromotion','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimPromotion
RENAME OBJECT edw.DimPromotion_Desired to DimPromotion
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimReseller','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimReseller
RENAME OBJECT edw.DimReseller_Desired to DimReseller
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimSalesReason','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimSalesReason
RENAME OBJECT edw.DimSalesReason_Desired to DimSalesReason
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimScenario','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimScenario
RENAME OBJECT edw.DimScenario_Desired to DimScenario
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCallCenter','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCallCenter
RENAME OBJECT edw.FactCallCenter_Desired to FactCallCenter
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCurrencyRate','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCurrencyRate
RENAME OBJECT edw.FactCurrencyRate_Desired to FactCurrencyRate
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactFinance','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactFinance
RENAME OBJECT edw.FactFinance_Desired to FactFinance
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSales','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSales
RENAME OBJECT edw.FactInternetSales_Desired to FactInternetSales
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSalesReason','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason
RENAME OBJECT edw.FactInternetSalesReason_Desired to FactInternetSalesReason
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactProductInventory','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactProductInventory
RENAME OBJECT edw.FactProductInventory_Desired to FactProductInventory
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactResellerSales','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactResellerSales
RENAME OBJECT edw.FactResellerSales_Desired to FactResellerSales
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSalesQuota','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSalesQuota
RENAME OBJECT edw.FactSalesQuota_Desired to FactSalesQuota
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSurveyResponse','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSurveyResponse
RENAME OBJECT edw.FactSurveyResponse_Desired to FactSurveyResponse
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.ProspectiveBuyer','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer
RENAME OBJECT edw.ProspectiveBuyer_Desired to ProspectiveBuyer
GO 
 
