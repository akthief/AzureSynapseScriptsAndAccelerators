/* 3A. Option A. Rename the Orginal Table to New Name by adding Suffix _Backup    */
/*     and then Rename Desired Table Name to Orginal Table Name */
-- Code Generated at 08/02/2021 13:57:50
 
RENAME OBJECT edw.DimAccount to DimAccount_Backup
RENAME OBJECT edw.DimAccount_Desired to DimAccount
GO 
 
RENAME OBJECT edw.DimCurrency to DimCurrency_Backup
RENAME OBJECT edw.DimCurrency_Desired to DimCurrency
GO 
 
RENAME OBJECT edw.DimCustomer to DimCustomer_Backup
RENAME OBJECT edw.DimCustomer_Desired to DimCustomer
GO 
 
RENAME OBJECT edw.DimDate to DimDate_Backup
RENAME OBJECT edw.DimDate_Desired to DimDate
GO 
 
RENAME OBJECT edw.DimDepartmentGroup to DimDepartmentGroup_Backup
RENAME OBJECT edw.DimDepartmentGroup_Desired to DimDepartmentGroup
GO 
 
RENAME OBJECT edw.DimGeography to DimGeography_Backup
RENAME OBJECT edw.DimGeography_Desired to DimGeography
GO 
 
RENAME OBJECT edw.DimOrganization to DimOrganization_Backup
RENAME OBJECT edw.DimOrganization_Desired to DimOrganization
GO 
 
RENAME OBJECT edw.DimProductCategory to DimProductCategory_Backup
RENAME OBJECT edw.DimProductCategory_Desired to DimProductCategory
GO 
 
RENAME OBJECT edw.DimProductSubcategory to DimProductSubcategory_Backup
RENAME OBJECT edw.DimProductSubcategory_Desired to DimProductSubcategory
GO 
 
RENAME OBJECT edw.DimPromotion to DimPromotion_Backup
RENAME OBJECT edw.DimPromotion_Desired to DimPromotion
GO 
 
RENAME OBJECT edw.DimReseller to DimReseller_Backup
RENAME OBJECT edw.DimReseller_Desired to DimReseller
GO 
 
RENAME OBJECT edw.DimSalesReason to DimSalesReason_Backup
RENAME OBJECT edw.DimSalesReason_Desired to DimSalesReason
GO 
 
RENAME OBJECT edw.DimScenario to DimScenario_Backup
RENAME OBJECT edw.DimScenario_Desired to DimScenario
GO 
 
RENAME OBJECT edw.FactCallCenter to FactCallCenter_Backup
RENAME OBJECT edw.FactCallCenter_Desired to FactCallCenter
GO 
 
RENAME OBJECT edw.FactCurrencyRate to FactCurrencyRate_Backup
RENAME OBJECT edw.FactCurrencyRate_Desired to FactCurrencyRate
GO 
 
RENAME OBJECT edw.FactFinance to FactFinance_Backup
RENAME OBJECT edw.FactFinance_Desired to FactFinance
GO 
 
RENAME OBJECT edw.FactInternetSales to FactInternetSales_Backup
RENAME OBJECT edw.FactInternetSales_Desired to FactInternetSales
GO 
 
RENAME OBJECT edw.FactInternetSalesReason to FactInternetSalesReason_Backup
RENAME OBJECT edw.FactInternetSalesReason_Desired to FactInternetSalesReason
GO 
 
RENAME OBJECT edw.FactProductInventory to FactProductInventory_Backup
RENAME OBJECT edw.FactProductInventory_Desired to FactProductInventory
GO 
 
RENAME OBJECT edw.FactResellerSales to FactResellerSales_Backup
RENAME OBJECT edw.FactResellerSales_Desired to FactResellerSales
GO 
 
RENAME OBJECT edw.FactSalesQuota to FactSalesQuota_Backup
RENAME OBJECT edw.FactSalesQuota_Desired to FactSalesQuota
GO 
 
RENAME OBJECT edw.FactSurveyResponse to FactSurveyResponse_Backup
RENAME OBJECT edw.FactSurveyResponse_Desired to FactSurveyResponse
GO 
 
RENAME OBJECT edw.ProspectiveBuyer to ProspectiveBuyer_Backup
RENAME OBJECT edw.ProspectiveBuyer_Desired to ProspectiveBuyer
GO 
 
