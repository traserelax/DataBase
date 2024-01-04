-- 7. Показать комбинированный список таблиц Purchasing.ProductVendor по полям ProductID, StandardPrice,
-- Purchasing.PurchaseOrderDetail по полям ProductID, UnitPrice, используя UNION.
SELECT "ProductID", CAST("StandardPrice" AS numeric) AS "Price" -- нельзя напримую сравнивать double и money, поэтому испльзуем приведение типов
FROM "Purchasing"."ProductVendor"
UNION
SELECT "ProductID", CAST("UnitPrice" AS numeric) AS "Price"
FROM "Purchasing"."PurchaseOrderDetail";
