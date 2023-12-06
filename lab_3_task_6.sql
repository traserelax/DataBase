-- 6. Показать список имен (FirstName) заканчивающихся на «a», которые имеют несколько фамилий (LastName) из таблицы Person.Person, используя SELF JOIN.
SELECT DISTINCT ps1."FirstName"
FROM "Person"."Person" ps1
JOIN "Person"."Person" ps2 ON ps1."BusinessEntityID" <> ps2."BusinessEntityID" AND ps1."FirstName" = ps2."FirstName"
WHERE ps1."LastName" <> ps2."LastName" AND ps1."FirstName" LIKE '%a';