/* 8. Create Table Statistics */
-- Code Generated at 08/02/2021 13:57:50
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactCallCenter
 ON SqlPoolDatabaseName.edw.FactCallCenter
 (DateKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactCurrencyRate
 ON SqlPoolDatabaseName.edw.FactCurrencyRate
 (CurrencyKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactFinance
 ON SqlPoolDatabaseName.edw.FactFinance
 (AccountKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactInternetSales
 ON SqlPoolDatabaseName.edw.FactInternetSales
 (OrderDateKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactInternetSalesReason
 ON SqlPoolDatabaseName.edw.FactInternetSalesReason
 (SalesOrderNumber)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactProductInventory
 ON SqlPoolDatabaseName.edw.FactProductInventory
 (ProductKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactResellerSales
 ON SqlPoolDatabaseName.edw.FactResellerSales
 (ResellerKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactSalesQuota
 ON SqlPoolDatabaseName.edw.FactSalesQuota
 (EmployeeKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
CREATE STATISTICS STATS_SqlPoolDatabaseName_edw_FactSurveyResponse
 ON SqlPoolDatabaseName.edw.FactSurveyResponse
 (CustomerKey)
 WITH SAMPLE 50 PERCENT; 
GO 
 
