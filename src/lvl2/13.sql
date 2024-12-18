SELECT П.НАЗВАНИЕ 
FROM ПРОФЕССИИ П
WHERE NOT EXISTS (
    SELECT 1 
    FROM НАНИМАТЕЛЬ Н
    WHERE Н.МЕСТО_РАСПОЛОЖЕНИЯ <> 'Приморск'
    AND NOT EXISTS (
        SELECT 1 
        FROM ТРУДОВОЙ_ДОГОВОР ТД
        WHERE ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР 
        AND ТД.ПРОФЕССИЯ = П.ИДЕНТИФИКАТОР
    )
);

SELECT БН.НОМЕР, БН.АДРЕС_КОНТОРЫ 
FROM БЮРО_НАЙМА БН
WHERE NOT EXISTS (
    SELECT 1 
    FROM ПРОФЕССИИ П
    WHERE П.СТОИМОСТЬ_НАЙМА > 15000
    AND NOT EXISTS (
        SELECT 1 
        FROM ТРУДОВОЙ_ДОГОВОР ТД
        WHERE ТД.БЮРО_НАЙМА = БН.ИДЕНТИФИКАТОР 
        AND ТД.ПРОФЕССИЯ = П.ИДЕНТИФИКАТОР
    )
);

SELECT БН.НОМЕР, БН.АДРЕС_КОНТОРЫ 
FROM БЮРО_НАЙМА БН
WHERE NOT EXISTS (
    SELECT 1 
    FROM ТРУДОВОЙ_ДОГОВОР ТД
    WHERE ТД.БЮРО_НАЙМА = БН.ИДЕНТИФИКАТОР 
    AND EXISTS (
        SELECT 1 
        FROM ПРОФЕССИИ П
        WHERE П.ИДЕНТИФИКАТОР = ТД.ПРОФЕССИЯ
        AND П.МЕСТО_ПРЕЖНЕЙ_РАБОТЫ IS NOT DISTINCT FROM (
            SELECT Н.МЕСТО_РАСПОЛОЖЕНИЯ 
            FROM НАНИМАТЕЛЬ Н
            WHERE Н.ИДЕНТИФИКАТОР = ТД.НАНИМАТЕЛЬ
        )
    )
);

SELECT Н.НАЗВАНИЕ 
FROM НАНИМАТЕЛЬ Н
WHERE NOT EXISTS (
    SELECT 1 
    FROM ТРУДОВОЙ_ДОГОВОР ТД
    WHERE ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР 
    AND ТД.ОПЛАТА >= 100000
    AND ТД.ДАТА BETWEEN '2023-04-01' AND '2023-04-30'
    AND NOT EXISTS (
        SELECT 1 
        FROM ТРУДОВОЙ_ДОГОВОР ТД2
        WHERE ТД2.НАНИМАТЕЛЬ = ТД.НАНИМАТЕЛЬ
    )
);