/* 2. Create Tables with Desired Distribution */
-- Code Generated at 08/02/2021 13:57:50
 
CREATE TABLE SqlPoolDatabaseName.edw.DimAccount_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimAccount
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCurrency_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCurrency
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCustomer_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCustomer
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDate_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDepartmentGroup
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimGeography_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimGeography
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimOrganization_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimOrganization
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductCategory_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductCategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductSubcategory_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductSubcategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimPromotion_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimPromotion
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimReseller_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimReseller
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimSalesReason_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimScenario_Desired 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimScenario
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCallCenter_Desired 
 WITH ( DISTRIBUTION = HASH(DateKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCallCenter
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCurrencyRate_Desired 
 WITH ( DISTRIBUTION = HASH(CurrencyKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCurrencyRate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactFinance_Desired 
 WITH ( DISTRIBUTION = HASH(AccountKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactFinance
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSales_Desired 
 WITH ( DISTRIBUTION = HASH(OrderDateKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason_Desired 
 WITH ( DISTRIBUTION = HASH(SalesOrderNumber)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactProductInventory_Desired 
 WITH ( DISTRIBUTION = HASH(ProductKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactProductInventory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactResellerSales_Desired 
 WITH ( DISTRIBUTION = HASH(ResellerKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactResellerSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSalesQuota_Desired 
 WITH ( DISTRIBUTION = HASH(EmployeeKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSalesQuota
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSurveyResponse_Desired 
 WITH ( DISTRIBUTION = HASH(CustomerKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSurveyResponse
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer_Desired 
 WITH ( DISTRIBUTION = ROUND_ROBIN ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.ProspectiveBuyer
GO; 
 
