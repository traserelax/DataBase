-- 4. Найти цвета из таблицы Production.Product, где суммарная и средняя 
-- стоимость товаров больше 1000 и 100 соответственно (из выборки исключить пустые поля).
SELECT "Color"
FROM "Production"."Product"
WHERE "StandardCost" > 100
      AND "Color" IS NOT NULL 
      AND "Color" != ''
GROUP BY "Color"
HAVING SUM("StandardCost") > 1000 
      AND AVG("StandardCost") > 100;
