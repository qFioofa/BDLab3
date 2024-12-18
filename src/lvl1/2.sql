INSERT INTO НАНИМАТЕЛЬ (ИДЕНТИФИКАТОР, НАЗВАНИЕ, МЕСТО_РАСПОЛОЖЕНИЯ, ЛЬГОТА)
VALUES 
(001, 'Рога и копыта', 'Приморск', 0),
(002, 'ГАЗ', 'Н. Новгород', 20),
(003, 'Станкостроительный завод', 'Одесса', 2),
(004, 'КИНАП', 'Одесса', 2),
(005, 'КРАЗ', 'Кременчуг', 2),
(006, '12687-у', 'Саранск', 10);

INSERT INTO БЮРО_НАЙМА (ИДЕНТИФИКАТОР, НОМЕР, АДРЕС_КОНТОРЫ, ПЛАТА_ЗА_УСЛУГИ)
VALUES
(001, 'N5', 'Н.Новгород', 4),
(002, 'N4', 'Москва', 3),
(003, 'N12', 'Киев', 11),
(004, 'N6', 'Н.Новгород', 3),
(005, 'N8', 'Одесса', 9);

INSERT INTO ПРОФЕССИИ (ИДЕНТИФИКАТОР, НАЗВАНИЕ, СТОИМОСТЬ_НАЙМА, КОЛ_ВО, МЕСТО_ПРЕЖНЕЙ_РАБОТЫ)
VALUES
(001, 'Кровельщик', 10000, 7, 'Саранск'),
(002, 'Слесарь', 15000, 6, 'Кременчуг'),
(003, 'Счетовод', 25000, 10, 'Москва'),
(004, 'Фрезеровщик', 20000, 7, 'Одесса'),
(005, 'Программист', 40000, 8, 'Киев'),
(006, 'Автоводитель', 25000, 3, 'Приморск'),
(007, 'Шлифовальщик', 17000, 5, 'Одесса');

INSERT INTO ТРУДОВОЙ_ДОГОВОР (НОМЕР_ДОГОВОРА, ДАТА, НАНИМАТЕЛЬ, БЮРО_НАЙМА, ПРОФЕССИЯ, КОЛ_ВО, ОПЛАТА)
VALUES
(00127, '2023-01-01', 003, 004, 006, 1, 25000),
(00128, '2023-02-01', 006, 002, 001, 2, 20000),
(00129, '2023-03-01', 001, 003, 004, 1, 20000),
(00130, '2023-04-01', 002, 001, 007, 2, 34000),
(00131, '2023-04-02', 004, 004, 006, 1, 25000),
(00132, '2023-04-03', 006, 004, 001, 1, 10000),
(00133, '2023-05-01', 005, 002, 005, 3, 120000),
(00134, '2023-05-02', 003, 003, 002, 3, 45000),
(00135, '2023-05-03', 003, 004, 001, 1, 10000),
(00136, '2023-06-01', 004, 001, 003, 4, 100000),
(00137, '2023-06-02', 001, 002, 002, 3, 45000),
(00138, '2023-06-03', 001, 003, 007, 1, 17000),
(00139, '2023-06-04', 005, 004, 001, 2, 20000),
(00140, '2023-06-05', 003, 005, 002, 1, 15000),
(00141, '2023-06-06', 003, 005, 002, 1, 15000),
(00142, '2023-07-01', 004, 002, 006, 1, 25000),
(00143, '2023-09-01', 002, 002, 007, 2, 34000);
