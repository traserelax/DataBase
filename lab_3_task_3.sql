-- 3. Показать список людей (поля FirstName, LastName), в котором указано, есть ли у человека ставка оплаты (Rate) или нет, из таблиц HumanResources.EmployeePayHistory, Person.Person, используя RIGHT OUTER JOIN.
SELECT ps."FirstName", ps."LastName", CASE WHEN eph."Rate" IS NULL THEN 'No' ELSE 'Yes' END AS "IsRateAvailable"
FROM "HumanResources"."EmployeePayHistory" eph
RIGHT OUTER JOIN "Person"."Person" ps ON eph."BusinessEntityID" = ps."BusinessEntityID";