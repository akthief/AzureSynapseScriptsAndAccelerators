/* 6. Insert Into Statements From Sister Tables */
-- Code Generated at 08/02/2021 13:57:50
 
INSERT INTO SqlPoolDatabaseName.edw.DimAccount
SELECT * FROM  SqlPoolDatabaseName.edw.DimAccount_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimCurrency
SELECT * FROM  SqlPoolDatabaseName.edw.DimCurrency_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimCustomer
SELECT * FROM  SqlPoolDatabaseName.edw.DimCustomer_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimDate
SELECT * FROM  SqlPoolDatabaseName.edw.DimDate_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimDepartmentGroup
SELECT * FROM  SqlPoolDatabaseName.edw.DimDepartmentGroup_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimGeography
SELECT * FROM  SqlPoolDatabaseName.edw.DimGeography_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimOrganization
SELECT * FROM  SqlPoolDatabaseName.edw.DimOrganization_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimProductCategory
SELECT * FROM  SqlPoolDatabaseName.edw.DimProductCategory_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimProductSubcategory
SELECT * FROM  SqlPoolDatabaseName.edw.DimProductSubcategory_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimPromotion
SELECT * FROM  SqlPoolDatabaseName.edw.DimPromotion_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimReseller
SELECT * FROM  SqlPoolDatabaseName.edw.DimReseller_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimSalesReason
SELECT * FROM  SqlPoolDatabaseName.edw.DimSalesReason_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.DimScenario
SELECT * FROM  SqlPoolDatabaseName.edw.DimScenario_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactCallCenter
SELECT * FROM  SqlPoolDatabaseName.edw.FactCallCenter_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactCurrencyRate
SELECT * FROM  SqlPoolDatabaseName.edw.FactCurrencyRate_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactFinance
SELECT * FROM  SqlPoolDatabaseName.edw.FactFinance_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactInternetSales
SELECT * FROM  SqlPoolDatabaseName.edw.FactInternetSales_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactInternetSalesReason
SELECT * FROM  SqlPoolDatabaseName.edw.FactInternetSalesReason_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactProductInventory
SELECT * FROM  SqlPoolDatabaseName.edw.FactProductInventory_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactResellerSales
SELECT * FROM  SqlPoolDatabaseName.edw.FactResellerSales_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactSalesQuota
SELECT * FROM  SqlPoolDatabaseName.edw.FactSalesQuota_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.FactSurveyResponse
SELECT * FROM  SqlPoolDatabaseName.edw.FactSurveyResponse_B
GO 
 
INSERT INTO SqlPoolDatabaseName.edw.ProspectiveBuyer
SELECT * FROM  SqlPoolDatabaseName.edw.ProspectiveBuyer_B
GO 
 
