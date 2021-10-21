CREATE VIEW [vTop3Quotas] AS select FirstName, LastName, SalesAmountQuota from DimEmployee, (select top 3 SalesAmountQuota from FactSalesQuota order by SalesAmountQuota desc) t2
where SalesPersonFlag = 1;
