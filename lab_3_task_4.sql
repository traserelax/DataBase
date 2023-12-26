-- 4. Показать список типов спецпредложений (Type), которые имеют несколько категорий получателей спецпредложения (Category), из таблицы Sales.SpecialOffer, используя SELF JOIN.
SELECT DISTINCT s1."Type"
FROM "Sales"."SpecialOffer" s1
JOIN "Sales"."SpecialOffer" s2 ON s1."Type" = s2."Type"
WHERE s1."Category" <> s2."Category";