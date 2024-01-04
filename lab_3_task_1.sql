-- 1. Показать названия единиц измерения размера товаров и названия товаров (поля Name) из таблиц Production.Product, Production.UnitMeasure.
SELECT p."Name" AS "ProductName", u."Name" AS "UnitMeasureName"
FROM "Production"."Product" p
JOIN "Production"."UnitMeasure" u ON p."SizeUnitMeasureCode" = u."UnitMeasureCode";