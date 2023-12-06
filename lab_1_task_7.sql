-- 7. Из таблицы HumanResources.JobCandidate показать поля JobCandidateID, BusinessEntityID и Resume. Все неизвестные значения поля BusinessEntityID заменить на 0, а само поле переименовать на BusinessEntityID_0.
SELECT "JobCandidateID", COALESCE("BusinessEntityID", 0) AS "BusinessEntityID_0", "Resume"
FROM "HumanResources"."JobCandidate";