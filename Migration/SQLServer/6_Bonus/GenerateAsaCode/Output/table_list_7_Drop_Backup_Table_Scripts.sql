/* 7. Drop Backup Tables. Dont do this if you dont know what you are doing! */
-- Code Generated at 08/02/2021 13:57:50
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimAccount_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimAccount_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimAccount_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimAccount_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCurrency_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCurrency_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCurrency_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCurrency_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCustomer_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCustomer_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimCustomer_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimCustomer_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDate_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDate_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDate_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDate_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDepartmentGroup_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimDepartmentGroup_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimGeography_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimGeography_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimGeography_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimGeography_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimOrganization_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimOrganization_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimOrganization_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimOrganization_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductCategory_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductCategory_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductCategory_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductCategory_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductSubcategory_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductSubcategory_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimProductSubcategory_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimProductSubcategory_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimPromotion_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimPromotion_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimPromotion_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimPromotion_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimReseller_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimReseller_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimReseller_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimReseller_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimSalesReason_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimSalesReason_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimSalesReason_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimSalesReason_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimScenario_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimScenario_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.DimScenario_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.DimScenario_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCallCenter_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCallCenter_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCallCenter_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCallCenter_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCurrencyRate_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCurrencyRate_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactCurrencyRate_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactCurrencyRate_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactFinance_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactFinance_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactFinance_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactFinance_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSales_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSales_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSales_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSales_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSalesReason_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactInternetSalesReason_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactProductInventory_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactProductInventory_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactProductInventory_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactProductInventory_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactResellerSales_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactResellerSales_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactResellerSales_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactResellerSales_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSalesQuota_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSalesQuota_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSalesQuota_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSalesQuota_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSurveyResponse_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSurveyResponse_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.FactSurveyResponse_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.FactSurveyResponse_Backup
GO 
 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.ProspectiveBuyer_B','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer_B
GO 
IF (OBJECT_ID('SqlPoolDatabaseName.edw.ProspectiveBuyer_Backup','U') IS NOT NULL) DROP TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer_Backup
GO 
 
