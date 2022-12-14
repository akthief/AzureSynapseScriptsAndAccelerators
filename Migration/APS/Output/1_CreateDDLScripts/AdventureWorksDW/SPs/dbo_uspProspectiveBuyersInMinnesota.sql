CREATE PROC [uspProspectiveBuyersInMinnesota] AS 
select distinct MaritalStatus, Occupation from ProspectiveBuyer b1 where MaritalStatus = 'M' and StateProvinceCode = 'MN' and not exists (select * from ProspectiveBuyer b2 where MaritalStatus = 'S' and StateProvinceCode = 'MN' and b1.Occupation = b2.Occupation)
union
select distinct MaritalStatus, Occupation from ProspectiveBuyer b1 where MaritalStatus = 'S' and StateProvinceCode = 'MN' and not exists (select * from ProspectiveBuyer b2 where MaritalStatus = 'M' and StateProvinceCode = 'MN' and b1.Occupation = b2.Occupation)

