/* 4. Create Sister Table with name appending _B */
/*    with the same distribution as _Desired Table */
-- Code Generated at 08/02/2021 13:57:50
 
CREATE TABLE SqlPoolDatabaseName.edw.DimAccount_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimAccount
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCurrency_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCurrency
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimCustomer_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimCustomer
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDate_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimDepartmentGroup_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimDepartmentGroup
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimGeography_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimGeography
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimOrganization_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimOrganization
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductCategory_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductCategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimProductSubcategory_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimProductSubcategory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimPromotion_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimPromotion
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimReseller_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimReseller
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimSalesReason_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.DimScenario_B 
 WITH ( DISTRIBUTION = REPLICATE ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.DimScenario
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCallCenter_B 
 WITH ( DISTRIBUTION = HASH(DateKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCallCenter
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactCurrencyRate_B 
 WITH ( DISTRIBUTION = HASH(CurrencyKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactCurrencyRate
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactFinance_B 
 WITH ( DISTRIBUTION = HASH(AccountKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactFinance
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSales_B 
 WITH ( DISTRIBUTION = HASH(OrderDateKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactInternetSalesReason_B 
 WITH ( DISTRIBUTION = HASH(SalesOrderNumber)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactInternetSalesReason
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactProductInventory_B 
 WITH ( DISTRIBUTION = HASH(ProductKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactProductInventory
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactResellerSales_B 
 WITH ( DISTRIBUTION = HASH(ResellerKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactResellerSales
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSalesQuota_B 
 WITH ( DISTRIBUTION = HASH(EmployeeKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSalesQuota
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.FactSurveyResponse_B 
 WITH ( DISTRIBUTION = HASH(CustomerKey)  )
 AS SELECT * FROM SqlPoolDatabaseName.edw.FactSurveyResponse
GO; 
 
CREATE TABLE SqlPoolDatabaseName.edw.ProspectiveBuyer_B 
 WITH ( DISTRIBUTION = ROUND_ROBIN ) 
 AS SELECT * FROM SqlPoolDatabaseName.edw.ProspectiveBuyer
GO; 
 
