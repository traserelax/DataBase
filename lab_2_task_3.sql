-- 3. Показать количество заказов из разных городов, основываюсь на таблице Person.Address (из выборки исключить пустые поля).
SELECT "City", COUNT(*) AS "OrderCount"
FROM "Person"."Address"
WHERE "City" IS NOT NULL AND "City" != ''
GROUP BY "City";