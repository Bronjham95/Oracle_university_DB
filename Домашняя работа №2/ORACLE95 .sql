-- -------------------------------------------------------------
-- Заполнение таблиц
-- --------------------------------------------------------------
-- Вставка данных в таблицу PERSON
-- --------------------------------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_PERSON
START WITH 1
INCREMENT BY 1;
-- --------------------------

-- №1
INSERT  INTO PERSON 
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval , 'ВИКТОР' , 'СИПЛИВЫЙ' , 'НИКОЛАЕВИЧ' , 'Г. ВОЛГОГРАД | ПР-Т УНИВЕРСИТЕТСКИЙ 100' );
-- №2
INSERT  INTO PERSON 
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'АНТОН', 'ЧЕХОВ', 'ПАВЛОВИЧ', 'Г.ВОЛГОГРАД | УЛ.КАЗАХСКАЯ 24');
-- №3
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'АЛЕКСАНДР', 'МИХАЙЛОВ', 'ВЛАДИМИРОВИЧ', 'Г.ВОЛГОГРАД | УЛ.СОЛНЕЧНАЯ 19');
-- №4
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'МАРИНА', 'СОЛОДКОВА', 'ПЕТРОВОВНА', 'Г.ВОЛГОГРАД | УЛ.КРАСНЫХ ПАРТИЗАН 9');
--№5
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'ВЛАДИМИР', 'БЕЛИКОВ', 'МАКСИМОВИЧ', 'Г.ВОЛГОГРАД | ПР-Т ЗОВА СЕРДЦА 3');
--№6
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'ВАСИЛИЙ', 'ЛЯПУНОВ', 'СЕРГЕЕВИЧ', 'Г.ВОЛГОГРАД | УЛ.ПЕТРОВСКАЯ 9');
--№7
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'МАРК', 'ВОЛКОВ', 'ГРИГОРЬЕВИЧ', 'Г.ВОЛГОГРАД | УЛ.ИЕРУСАЛИМСКАЯ 17а');
--№8
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'АНТОН', 'ПОЖИДАЕВ', 'АНДРЕЕВИЧ', 'Г.ВОЛГОГРАД | УЛ.ВОРОВСКОГО 12');
--№9
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'АННА', 'СИДОРЕНКО', 'АНАТОЛЬЕВНА', 'Г.ВОЛГОГРАД | УЛ.ЧЕКИСТОВ 23');
--№10
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, 'ЕКАТЕРИНА', 'СМРНОВА', 'ОЛЕГОВНА', 'Г.ВОЛГОГРАД | УЛ.ПАРКОВАЯ 14');


-- ----------------------------------------
-- Вставка данных в таблицу PASSPORT
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_PASSPORT
START WITH 1
INCREMENT BY 1;
-- --------------------------

--№1
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4325', '345623', 'Г.ВОЛГОГРАД | УЛ.КАЗАХСКАЯ 24');
--№2
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '2495', '236078', 'Г.АНАПА | УЛ.НАВАГИНСКАЯ 12');
--№3
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '1756', '563278', 'Г.КРАСНОДАР | УЛ.КРАСНОГО ОКТЯБРЯ 17/3');
--№4
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4590', '634902', 'Г.ВОЛГОГРАД | УЛ.ПЕТРОВСКАЯ 9');
--№5
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '2350', '367564', 'Г.ВОЛГОГРАД | УЛ.СОЛНЕЧНАЯ 19');
--№6
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '3267', '612756', 'Г.ВОЛГОГРАД | УЛ.ПАРКОВАЯ 14');
--№7
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '9080', '530270', 'Г.ВОЛГОГРАД | ПР-Т УНИВЕРСИТЕТСКИЙ 100');
--№8
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '1710', '650320', 'Г.ВОЛГОГРАД | УЛ.ВОРОВСКОГО 12');
--№9
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4632', '640670', 'Г.ХАРЬКОВ | УЛ.ТАРАСА ШЕВЧЕНКО 32');
--№10
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '6420', '123567', 'Г.ВОЛГОГРАД | ПР-Т ЗОВА СЕРДЦА');


-- ----------------------------------------
-- Вставка данных в таблицу STUDENT
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_STUDENT
START WITH 1
INCREMENT BY 1;
-- --------------------------

--№1
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval,'3', '1', '02.08.2016');
--№2
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '4', '2', '18.08.2016');
--№3
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '5', '3', '03.08.2016');
--№4
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '2', '5', '17.08.2016');
--№5
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '7', '6', '03.08.2016');
--№6
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '8','7', '17.08.2016');
--№7
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '9', '8', '03.08.2016');
--№8
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '10','9', '03.08.2016');


-- ----------------------------------------
-- Вставка данных в таблицу Институт
-- ----------------------------------------

-- Создание последовательности:
-- --------------------------
CREATE SEQUENCE SEQ_INST
START WITH 1
INCREMENT BY 1;
-- -------------------------

--№1
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, 'ИНСТИТУТ МАТЕМАТИКИ И ИНФОРМАЦИОННЫХ ТЕХНОЛОГИЙ', 'ВАСИЛИЙ МОРОЗОВ ИВАНОВИЧ','89608674531' ,'VAS_MOROZ@VOLSU.RU');
--№2
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, 'ИНСТИТУТ ПРИОРИТЕТНЫХ ТЕХНОЛОГИЙ', 'АРТУР ХАЧАТУРЯН ГЕВОРКОВИЧ', '8405601275', 'ARTUR_GEV@VOLSU.RU');
--№3
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, 'ИНСТИТУТ ПРАВА', 'СОКРАТ ГРЕЧЕСКИЙ СПАРТАКОВИЧ', '89273285689', 'SOKRAT_GREAT@VOLSU.RU');


-- ----------------------------------------
-- Вставка данных в таблицу Кафедра
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_DEPARTMENT
START WITH 1
INCREMENT BY 1;
-- ---------------------------

--№1
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', 'КАФЕДРА ТЕОРЕТИЧЕСКОЙ ФИЗИКИ И ВОЛНОВЫХ ПРОЦЕССОВ', 'АНАТОЛИЙ ИВАН ИВАНОВИЧ');
--№2
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', 'КАФЕДРА РАДИОФИЗИКИ', 'ПЕТР СИДОРЕНКО МИХАЙЛОВИЧ');
--№3
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', 'КАФЕДРА РАДИОТЕХНИКИ', 'МИХАИЛ БАХ ГРУБРОВИЧ');


-- ----------------------------------------
-- Вставка данных в таблицу Преподаватель
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_TEACHER
START WITH 1
INCREMENT BY 1;
-- ---------------------------------------

--№1
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, DEP_ID)
VALUES
(SEQ_TEACHER.nextval, '1', '4', 'ПРЕПОДАВАТЕЛЬ ОБЩЕЙ ФИЗИКИ', 'ДОКТОР ФИЗКО-МАТЕМАТИЧЕСКИХ НАУК', '1');
--№2
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, D_ID)
VALUES
(SEQ_TEACHER.nextval, '6', '10', 'ПРЕПОДАВАТЕЛЬ ЭЛЕКТРОДИНАМИКИ', 'КАНДИДАТ ФИЗИКО-МАТЕМАТИЧЕСКИХ НАУК', '1');


-- ----------------------------------------
-- Вставка данных в таблицу Дисциплина
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_DISCIPLINE
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--№1
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'МАТЕМАТИЧЕСКИЙ АНАЛИЗ', '1', '187', 'ЗАЧЕТ С ОЦЕНКОЙ');
--№2
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'АНАЛИТИЧЕСКАЯ ГЕОМЕТРИЯ И ЛИНЕЙНАЯ АЛГЕБРА', '1', '143', 'ЭКЗАМЕН');
--№3
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'ВЕКТОРНЫЙ И ТЕНЗОРНЫЙ АНАЛИЗ', '2', '109', 'ЗАЧЕТ');
--№4
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'МЕХАНИКА', '1', '240', 'ЭКЗАМЕН');
--№5
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'ОСНОВЫ ЯЗЫКА С', '1', '135', 'ЗАЧЕТ');
--№6
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'ИСТОРИЯ МАТЕМАТИКИ', '1', '102', 'ЗАЧЕТ С ОЦЕНКОЙ');
--№7
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, 'ОСНОВЫ МИКРОПРОЦЕССОРНОЙ ТЕХНИКИ', '2', '84', 'ЗАЧЕТ');


-- ----------------------------------------
-- Вставка данных в таблицу Специализация
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_SPEC
START WITH 1
INCREMENT BY 1;
-- ---------------------------------------

--№1
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, 'ФИЗИКА', 'БАКАЛАВРИАТ');
--№2
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, 'РАДИОФИЗИКА', 'БАКАЛАВРИАТ');
--№3
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, 'ПРИКЛАДНАЯ МАТЕМАТИКА', 'СПЕЦИАЛИТЕТ');


-- ----------------------------------------
-- Вставка данных в таблицу Студенческая группа
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_SG
START WITH 1
INCREMENT BY 1;
-- ------------------------------------------

--№1
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, 'ФБ-151', '1');
--№2
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, 'РФБ-151', '2');
--№3
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, 'ПМБ-151', '3');


-- ----------------------------------------
-- Вставка данных в таблицу Ведомость
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_DS
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--№1
INSERT INTO DEPARTMENT_SHEET
(DS_ID, DIS_ID, TEACHER_ID, DS_GROUP_ID)
VALUES
(SEQ_DS.nextval, '4', '1', '2');


-- ----------------------------------------
-- Вставка данных в таблицу Успеваемость студента
-- ----------------------------------------

-- Создание последовательности:
CREATE SEQUENCE SEQ_AP
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--№1
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '1', '61', 'ЗАЧЕТ');
--№2
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '2', '71', 'ЗАЧЕТ');
--№3
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '3', '61', 'ЗАЧЕТ');
--№4
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '4', '54', 'НЕ ЗАЧЕТ');
--№5
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '5', '33', 'НЕ ЗАЧЕТ');
--№6
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '6', '85', 'ЗАЧЕТ');
--№7
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1','7', '63', 'ЗАЧЕТ');
--№8
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '8', '91', 'ЗАЧЕТ' );
