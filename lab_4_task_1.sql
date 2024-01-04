-- Показать товары с ценой выше средней, исключая товары с ценой равной нулю
SELECT "Name", "ListPrice"
FROM "Production"."Product"
WHERE "ListPrice" > (SELECT AVG("ListPrice") FROM "Production"."Product" WHERE "ListPrice" > 0);
