-- 2. Показать список товаров (поле Name), в котором указано, указана ли электронная почта рецензента товара или нет, из таблиц Production.Product, Production.ProductReview, используя LEFT OUTER JOIN.
SELECT p."Name", CASE WHEN pr."EmailAddress" IS NULL THEN 'No' ELSE 'Yes' END AS "IsEmailAddressAvailable"
FROM "Production"."Product" p
LEFT OUTER JOIN "Production"."ProductReview" pr ON p."ProductID" = pr."ProductID";