-- 1. Найти количество различных имен штатов из таблицы Person.StateProvince.
SELECT COUNT(DISTINCT "Name")
FROM "Person"."StateProvince";