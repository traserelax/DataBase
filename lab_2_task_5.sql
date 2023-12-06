-- 5. Вывести DueDate из таблицы Production.WorkOrder, где среднее по OrderQty меньше 10. Добавить столбец с рангом, идущим по порядку,
-- определяя его порядок в зависимости от средней цены. (Использовать DENSE_RANK)
SELECT "DueDate",
       DENSE_RANK() OVER (ORDER BY AVG("OrderQty")) AS "Rank"
FROM "Production"."WorkOrder"
GROUP BY "DueDate"
HAVING AVG("OrderQty") < 10;