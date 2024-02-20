-- 2. Найти среднюю и суммарную стоимость, которая больше 10, из таблицы Production.ProductCostHistory.
SELECT
    AVG("StandardCost") AS AverageCost, 
    SUM("StandardCost") AS TotalCost
FROM
    "Production"."ProductCostHistory"
WHERE
    "StandardCost" > 10;
