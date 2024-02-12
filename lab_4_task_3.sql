/*
  Задание 3:
  Показать товары, для которых существует только один стиль и они доступны только в одном цвете из таблицы Production.Product.
  Показать поля [Name], Style и Color.
*/
SELECT
    p1."Name",
    p1."Style",
    p1."Color"
FROM
    "Production"."Product" AS p1
WHERE
    p1."Style" IS NOT NULL
    AND p1."Color" IS NOT NULL
    AND (
      SELECT COUNT(DISTINCT p2."Style")
        FROM "Production"."Product" AS p2
        WHERE p2."ProductID" = p1."ProductID"
        ) = 1
    AND (
      SELECT COUNT(DISTINCT p2."Color")
        FROM "Production"."Product" AS p2
        WHERE p2."ProductID" = p1."ProductID"
        ) = 1;
