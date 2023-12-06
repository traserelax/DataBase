-- 8. Показать список BusinessEntityID, которые содержатся и в таблице Person.Person, и в таблице HumanResources.EmployeePayHistory.
SELECT ps."BusinessEntityID"
FROM "Person"."Person" ps
INNER JOIN "HumanResources"."EmployeePayHistory" eph ON ps."BusinessEntityID" = eph."BusinessEntityID";