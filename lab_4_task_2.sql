-- Показать категорию продуктов с максимальным количеством продуктов в ней
SELECT "Name", "ProductSubcategoryID"
FROM "Production"."ProductSubcategory"
WHERE "ProductSubcategoryID" = (
    SELECT "ProductSubcategoryID"
    FROM "Production"."Product"
    GROUP BY "ProductSubcategoryID"
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
