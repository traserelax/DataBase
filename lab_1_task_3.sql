-- 3. Показать поля BusinessEntityID, TerritoryID, StartDate, EndDate из таблицы Sales.SalesTerritoryHistory для которых дата окончания работы торгового представителя на территории (EndDate) находится между 2012-05-29 и 2012-11-29. Использовать оператор BETWEEN.
SELECT "BusinessEntityID", "TerritoryID", "StartDate", "EndDate"
FROM "Sales"."SalesTerritoryHistory"
WHERE "EndDate" BETWEEN '2012-05-29' AND '2012-11-29';