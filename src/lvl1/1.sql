CREATE TABLE НАНИМАТЕЛЬ (
    ИДЕНТИФИКАТОР INT PRIMARY KEY,
    НАЗВАНИЕ VARCHAR(255) NOT NULL,
    МЕСТО_РАСПОЛОЖЕНИЯ VARCHAR(255) NOT NULL,
    ЛЬГОТА DECIMAL(5, 2) CHECK (ЛЬГОТА >= 0 AND ЛЬГОТА <= 100)
);

CREATE TABLE БЮРО_НАЙМА (
    ИДЕНТИФИКАТОР INT PRIMARY KEY,
    НОМЕР VARCHAR(255) NOT NULL,
    АДРЕС_КОНТОРЫ VARCHAR(255) NOT NULL,
    ПЛАТА_ЗА_УСЛУГИ DECIMAL(5, 2) CHECK (ПЛАТА_ЗА_УСЛУГИ >= 0 AND ПЛАТА_ЗА_УСЛУГИ <= 100)
);

CREATE TABLE ПРОФЕССИИ (
    ИДЕНТИФИКАТОР INT PRIMARY KEY,
    НАЗВАНИЕ VARCHAR(255) NOT NULL,
    СТОИМОСТЬ_НАЙМА DECIMAL(10, 2) NOT NULL,
    КОЛ_ВО INT NOT NULL,
    МЕСТО_ПРЕЖНЕЙ_РАБОТЫ VARCHAR(255)
);

CREATE TABLE ТРУДОВОЙ_ДОГОВОР (
    НОМЕР_ДОГОВОРА INT PRIMARY KEY,
    ДАТА DATE NOT NULL,
    НАНИМАТЕЛЬ INT NOT NULL,
    БЮРО_НАЙМА INT NOT NULL,
    ПРОФЕССИЯ INT NOT NULL,
    КОЛ_ВО INT NOT NULL,
    ОПЛАТА DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (НАНИМАТЕЛЬ) REFERENCES НАНИМАТЕЛЬ(ИДЕНТИФИКАТОР),
    FOREIGN KEY (БЮРО_НАЙМА) REFERENCES БЮРО_НАЙМА(ИДЕНТИФИКАТОР),
    FOREIGN KEY (ПРОФЕССИЯ) REFERENCES ПРОФЕССИИ(ИДЕНТИФИКАТОР)
);
