-- 5. Показать список категорий получателей спецпредложения (Category), которые имеют несколько типов спецпредложений (Type), из таблицы Sales.SpecialOffer, используя SELF JOIN.
SELECT DISTINCT s1."Category"
FROM "Sales"."SpecialOffer" s1
JOIN "Sales"."SpecialOffer" s2 ON s1."SpecialOfferID" <> s2."SpecialOfferID" AND s1."Category" = s2."Category"
WHERE s1."Type" <> s2."Type";