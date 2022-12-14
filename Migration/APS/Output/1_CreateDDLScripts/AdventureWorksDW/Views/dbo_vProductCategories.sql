CREATE VIEW [vProductCategories] AS select distinct City, StateProvinceName, DimProductCategory.EnglishProductCategoryName 
from FactSurveyResponse, DimCustomer, DimProductCategory, DimDate, DimGeography
where FactSurveyResponse.CustomerKey = DimCustomer.CustomerKey and
FactSurveyResponse.ProductCategoryKey = DimProductCategory.ProductCategoryKey and
FactSurveyResponse.DateKey = DimDate.DateKey and
DimCustomer.GeographyKey = DimGeography.GeographyKey and
CountryRegionCode = 'DE' and
CalendarYear = 2002 and
CalendarQuarter = 4;
