SELECT 
    БН.ИДЕНТИФИКАТОР, 
    БН.НОМЕР, 
    БН.АДРЕС_КОНТОРЫ 
FROM 
    БЮРО_НАЙМА БН
WHERE 
    БН.ИДЕНТИФИКАТОР IN (
        SELECT ТД.БЮРО_НАЙМА 
        FROM ТРУДОВОЙ_ДОГОВОР ТД
        JOIN НАНИМАТЕЛЬ Н ON ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР
        WHERE Н.МЕСТО_РАСПОЛОЖЕНИЯ = 'Н. Новгород'
    );

SELECT 
    П.ИДЕНТИФИКАТОР, 
    П.НАЗВАНИЕ 
FROM 
    ПРОФЕССИИ П
WHERE 
    П.ИДЕНТИФИКАТОР NOT IN (
        SELECT ТД.ПРОФЕССИЯ 
        FROM ТРУДОВОЙ_ДОГОВОР ТД
        JOIN НАНИМАТЕЛЬ Н ON ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР
        WHERE Н.ЛЬГОТА < 10
    );

SELECT 
    ТД.ДАТА, 
    ТД.НОМЕР_ДОГОВОРА, 
    Н.НАЗВАНИЕ 
FROM 
    ТРУДОВОЙ_ДОГОВОР ТД
JOIN 
    НАНИМАТЕЛЬ Н ON ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР
WHERE 
    (ТД.ПРОФЕССИЯ = (SELECT ИДЕНТИФИКАТОР FROM ПРОФЕССИИ WHERE НАЗВАНИЕ = 'Автоводитель'))
    OR
    ТД.ОПЛАТА >= 14000;

SELECT 
    БН.НОМЕР, 
    БН.АДРЕС_КОНТОРЫ 
FROM 
    ТРУДОВОЙ_ДОГОВОР ТД
JOIN 
    НАНИМАТЕЛЬ Н ON ТД.НАНИМАТЕЛЬ = Н.ИДЕНТИФИКАТОР
JOIN 
    БЮРО_НАЙМА БН ON ТД.БЮРО_НАЙМА = БН.ИДЕНТИФИКАТОР
WHERE 
    Н.ЛЬГОТА < 7 
    AND 
    ТД.ДАТА > '2023-02-28';
