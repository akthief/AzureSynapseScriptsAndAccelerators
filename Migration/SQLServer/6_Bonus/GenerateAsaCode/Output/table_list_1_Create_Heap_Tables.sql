/* 1. Create Heap Tables */
-- Code Generated at 08/02/2021 13:57:50
 
CREATE TABLE SqlPoolDatabaseName.edw.DimAccount_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimAccount
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCurrency_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCurrency
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCustomer_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCustomer
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDate_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDepartmentGroup
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimGeography_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimGeography
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimOrganization_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimOrganization
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductCategory_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductCategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductSubcategory_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductSubcategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimPromotion_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimPromotion
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimReseller_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimReseller
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimSalesReason_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimScenario_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimScenario
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCallCenter_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCallCenter
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCurrencyRate_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCurrencyRate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactFinance_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactFinance
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSales_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactProductInventory_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactProductInventory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactResellerSales_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactResellerSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSalesQuota_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSalesQuota
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSurveyResponse_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSurveyResponse
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer_Heap
 WITH ( DISTRIBUTION = ROUND_ROBIN, HEAP )
 AS SELECT * FROM SqlPoolDatabaseName.edw.ProspectiveBuyer
GO; 
 
