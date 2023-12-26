-- 10. Из таблицы Production.ProductModelProductDescriptionCulture показать поля ProductModelID и CultureID. 
-- Все значения поля CultureID, равные 'zh-cht' заменить на NULL и вынести в отдельное поле с названием NullCultureID.
SELECT "ProductModelID",
       NULLIF("CultureID", 'zh-cht') AS "NullCultureID"
FROM "Production"."ProductModelProductDescriptionCulture";