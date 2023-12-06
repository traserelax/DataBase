-- 5. Из таблицы Person.EmailAddress показать все идентификационные номера e-mail адресов (EmailAddressID) и сами e-mail адреса (EmailAddress), содержащие в названии 'la'.
SELECT "EmailAddressID", "EmailAddress"
FROM "Person"."EmailAddress"
WHERE "EmailAddress" LIKE '%la%';