CREATE VIEW [vTotalSalesPerPromotion] AS select p.PromotionKey, p.EnglishPromotionName, SalesAmount
from DimPromotion p ,
(select s.PromotionKey, sum(SalesAmount) SalesAmount from FactInternetSales s where PromotionKey != 1 group by s.PromotionKey) s
where p.PromotionKey = s.PromotionKey;
