CREATE VIEW aw.[vTotalSalesPerPromotion] AS select p.PromotionKey, p.EnglishPromotionName, SalesAmount
from aw.DimPromotion p ,
(select s.PromotionKey, sum(SalesAmount) SalesAmount from aw.FactInternetSales s where PromotionKey != 1 group by s.PromotionKey) s
where p.PromotionKey = s.PromotionKey;

