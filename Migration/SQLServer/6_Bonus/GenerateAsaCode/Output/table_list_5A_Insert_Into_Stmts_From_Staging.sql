/* 5A. Insert Into Statements From Staging Tables */
-- Code Generated at 08/02/2021 13:57:50
 
INSERT INTO SqlPoolDatabaseName.edw.DimAccount
SELECT * FROM  SqlPoolDatabaseName.Staging.DimAccount
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimCurrency
SELECT * FROM  SqlPoolDatabaseName.Staging.DimCurrency
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimCustomer
SELECT * FROM  SqlPoolDatabaseName.Staging.DimCustomer
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimDate
SELECT * FROM  SqlPoolDatabaseName.Staging.DimDate
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimDepartmentGroup
SELECT * FROM  SqlPoolDatabaseName.Staging.DimDepartmentGroup
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimGeography
SELECT * FROM  SqlPoolDatabaseName.Staging.DimGeography
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimOrganization
SELECT * FROM  SqlPoolDatabaseName.Staging.DimOrganization
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimProductCategory
SELECT * FROM  SqlPoolDatabaseName.Staging.DimProductCategory
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimProductSubcategory
SELECT * FROM  SqlPoolDatabaseName.Staging.DimProductSubcategory
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimPromotion
SELECT * FROM  SqlPoolDatabaseName.Staging.DimPromotion
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimReseller
SELECT * FROM  SqlPoolDatabaseName.Staging.DimReseller
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimSalesReason
SELECT * FROM  SqlPoolDatabaseName.Staging.DimSalesReason
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimScenario
SELECT * FROM  SqlPoolDatabaseName.Staging.DimScenario
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactCallCenter
SELECT * FROM  SqlPoolDatabaseName.Staging.FactCallCenter
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactCurrencyRate
SELECT * FROM  SqlPoolDatabaseName.Staging.FactCurrencyRate
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactFinance
SELECT * FROM  SqlPoolDatabaseName.Staging.FactFinance
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactInternetSales
SELECT * FROM  SqlPoolDatabaseName.Staging.FactInternetSales
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactInternetSalesReason
SELECT * FROM  SqlPoolDatabaseName.Staging.FactInternetSalesReason
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactProductInventory
SELECT * FROM  SqlPoolDatabaseName.Staging.FactProductInventory
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactResellerSales
SELECT * FROM  SqlPoolDatabaseName.Staging.FactResellerSales
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactSalesQuota
SELECT * FROM  SqlPoolDatabaseName.Staging.FactSalesQuota
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactSurveyResponse
SELECT * FROM  SqlPoolDatabaseName.Staging.FactSurveyResponse
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.ProspectiveBuyer
SELECT * FROM  SqlPoolDatabaseName.Staging.ProspectiveBuyer
GO 
 
