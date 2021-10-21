CREATE VIEW aw.[vTop3Quotas] AS select FirstName, LastName, SalesAmountQuota from aw.DimEmployee, (select top 3 SalesAmountQuota from aw.FactSalesQuota order by SalesAmountQuota desc) t2
where SalesPersonFlag = 1;

