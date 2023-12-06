-- 4. Показать поле BillOfMaterialsID и даты прекращения использования компонента в сборочном элементе (EndDate). Пустые значения поля EndDate показывать не надо. Таблица Production.BillOfMaterials.
SELECT "BillOfMaterialsID", "EndDate"
FROM "Production"."BillOfMaterials"
WHERE "EndDate" IS NOT NULL;