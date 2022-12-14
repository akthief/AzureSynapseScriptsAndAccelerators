CREATE PROC aw.[uspProspectiveBuyersInMinnesota] AS 
select distinct MaritalStatus, Occupation from aw.ProspectiveBuyer b1 where MaritalStatus = 'M' and StateProvinceCode = 'MN' and not exists (select * from aw.ProspectiveBuyer b2 where MaritalStatus = 'S' and StateProvinceCode = 'MN' and b1.Occupation = b2.Occupation)
union
select distinct MaritalStatus, Occupation from aw.ProspectiveBuyer b1 where MaritalStatus = 'S' and StateProvinceCode = 'MN' and not exists (select * from aw.ProspectiveBuyer b2 where MaritalStatus = 'M' and StateProvinceCode = 'MN' and b1.Occupation = b2.Occupation)


