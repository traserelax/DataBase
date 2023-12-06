-- 9. Отсортировать все строки таблицы Sales.CreditCard в обратном алфавитном порядке относительно типа кредитной карты (CardType). Показать ID кредитных карт (CreditCardID), их тип (CardType), а также номера карт (CardNumber).
SELECT "CreditCardID", "CardType", "CardNumber"
FROM "Sales"."CreditCard"
ORDER BY "CardType" DESC;