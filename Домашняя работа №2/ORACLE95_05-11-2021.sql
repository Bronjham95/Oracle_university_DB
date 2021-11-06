-- DDL ------------------------------
-- ----------------------------------

CREATE TABLE academ_per (
    ap_id               INTEGER NOT NULL,
    department_sheet_id INTEGER NOT NULL,
    student_id          INTEGER NOT NULL,
    point               VARCHAR2(20) NOT NULL,
    test                VARCHAR2(15) NOT NULL
);

CREATE UNIQUE INDEX ifk_ap_dep_sheet_id ON
    academ_per (
        department_sheet_id
    ASC );

CREATE UNIQUE INDEX ifk_ap_student_id ON
    academ_per (
        student_id
    ASC );

ALTER TABLE academ_per ADD CONSTRAINT pk_academ_per PRIMARY KEY ( ap_id );

CREATE TABLE department (
    dep_id   INTEGER NOT NULL,
    inst_id  INTEGER NOT NULL,
    dep_name VARCHAR2(50) NOT NULL,
    dep_head VARCHAR2(90) NOT NULL
);

ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY ( dep_id );

CREATE TABLE department_sheet (
    ds_id                  INTEGER NOT NULL,
    discipline_dis_id      INTEGER NOT NULL,
    teacher_teacher_id     INTEGER NOT NULL,
    student_group_group_id INTEGER NOT NULL
);

CREATE UNIQUE INDEX ifk_ds_dis_id ON
    department_sheet (
        discipline_dis_id
    ASC );

CREATE UNIQUE INDEX ifk_ds_group_id ON
    department_sheet (
        student_group_group_id
    ASC );

CREATE UNIQUE INDEX ifk_ds_teacher_id ON
    department_sheet (
        teacher_teacher_id
    ASC );

ALTER TABLE department_sheet ADD CONSTRAINT pk_department_sheet PRIMARY KEY ( ds_id );

CREATE TABLE discipline (
    dis_id   INTEGER NOT NULL,
    dis_name VARCHAR2(50) NOT NULL,
    time     INTEGER NOT NULL,
    term     INTEGER NOT NULL,
    t_report VARCHAR2(15) NOT NULL
);

ALTER TABLE discipline ADD CONSTRAINT pk_discipline PRIMARY KEY ( dis_id );

CREATE TABLE institute (
    inst_id   INTEGER NOT NULL,
    inst_name VARCHAR2(50) NOT NULL,
    inst_dean VARCHAR2(90) NOT NULL,
    telephone VARCHAR2(15) NOT NULL,
    "E-MAIL"  VARCHAR2(50) NOT NULL
);

ALTER TABLE institute ADD CONSTRAINT pk_institute PRIMARY KEY ( inst_id );

CREATE TABLE passport (
    pass_id  INTEGER NOT NULL,
    pass_num INTEGER NOT NULL,
    pass_sn  INTEGER,
    pass_reg VARCHAR2(150) NOT NULL
);

ALTER TABLE passport ADD CONSTRAINT pk_passport PRIMARY KEY ( pass_id );

CREATE TABLE person (
    person_id    INTEGER NOT NULL,
    firstname    VARCHAR2(30) NOT NULL,
    lastname     VARCHAR2(30) NOT NULL,
    patronimic   VARCHAR2(30),
    fact_address VARCHAR2(50) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY ( person_id );

CREATE TABLE specialization (
    spec_id   INTEGER NOT NULL,
    spec_name VARCHAR2(50) NOT NULL,
    spec_lvl  VARCHAR2(20) NOT NULL
);

ALTER TABLE specialization ADD CONSTRAINT pk_specialization PRIMARY KEY ( spec_id );

CREATE TABLE student (
    student_id INTEGER NOT NULL,
    person_id  INTEGER NOT NULL,
    pass_id    INTEGER NOT NULL,
    begin_date DATE NOT NULL
);

CREATE UNIQUE INDEX ifk_student_pass_id ON
    student (
        pass_id
    ASC );

CREATE UNIQUE INDEX ifk_student_person_id ON
    student (
        person_id
    ASC );

ALTER TABLE student ADD CONSTRAINT pk_student PRIMARY KEY ( student_id );

CREATE TABLE student_group (
    group_id               INTEGER NOT NULL,
    specialization_spec_id INTEGER NOT NULL,
    group_name             VARCHAR2(10) NOT NULL
);

CREATE UNIQUE INDEX ifk_sg_spec_id ON
    student_group (
        specialization_spec_id
    ASC );

ALTER TABLE student_group ADD CONSTRAINT pk_student_group PRIMARY KEY ( group_id );

CREATE TABLE teacher (
    teacher_id INTEGER NOT NULL,
    person_id  INTEGER NOT NULL,
    pass_id    INTEGER NOT NULL,
    position   VARCHAR2(50) NOT NULL,
    ac_degree  VARCHAR2(50),
    dep_id     INTEGER NOT NULL
);

CREATE UNIQUE INDEX ifk_teacher_pass_id ON
    teacher (
        pass_id
    ASC );

CREATE UNIQUE INDEX ifk_teacher_person_id ON
    teacher (
        person_id
    ASC );

ALTER TABLE teacher ADD CONSTRAINT pk_teacher PRIMARY KEY ( teacher_id );

ALTER TABLE academ_per
    ADD CONSTRAINT fk_ap_department_sheet FOREIGN KEY ( department_sheet_id )
        REFERENCES department_sheet ( ds_id );

ALTER TABLE academ_per
    ADD CONSTRAINT fk_ap_student FOREIGN KEY ( student_id )
        REFERENCES student ( student_id );

ALTER TABLE department
    ADD CONSTRAINT fk_department_institute FOREIGN KEY ( inst_id )
        REFERENCES institute ( inst_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_des_teacher FOREIGN KEY ( teacher_teacher_id )
        REFERENCES teacher ( teacher_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_ds_discipline FOREIGN KEY ( discipline_dis_id )
        REFERENCES discipline ( dis_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_ds_student_group FOREIGN KEY ( student_group_group_id )
        REFERENCES student_group ( group_id );

ALTER TABLE student_group
    ADD CONSTRAINT fk_sg_spec FOREIGN KEY ( specialization_spec_id )
        REFERENCES specialization ( spec_id );

ALTER TABLE student
    ADD CONSTRAINT fk_student_passport FOREIGN KEY ( pass_id )
        REFERENCES passport ( pass_id );

ALTER TABLE student
    ADD CONSTRAINT fk_student_person FOREIGN KEY ( person_id )
        REFERENCES person ( person_id );

ALTER TABLE teacher
    ADD CONSTRAINT fk_teacher_department FOREIGN KEY ( dep_id )
        REFERENCES department ( dep_id );

ALTER TABLE teacher
    ADD CONSTRAINT fk_teacher_passport FOREIGN KEY ( pass_id )
        REFERENCES passport ( pass_id );

ALTER TABLE teacher
    ADD CONSTRAINT fk_teacher_person FOREIGN KEY ( person_id )
        REFERENCES person ( person_id );
        
-- ------------------------------------------------------------------

-- DML -------------------------------------------------------------
-- -----------------------------------------------------------------
-- --------------------------------------------------------------
-- Вставка данных в таблицу PERSON
-- --------------------------------------------------------------
DROP SEQUENCE SEQ_PERSON;
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
DROP SEQUENCE SEQ_PASSPORT;
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
DROP SEQUENCE SEQ_STUDENT;
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
DROP SEQUENCE SEQ_INST;
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
DROP SEQUENCE SEQ_TEACHER;
-- Создание последовательности:
CREATE SEQUENCE SEQ_TEACHER
START WITH 1
INCREMENT BY 1;
-- ---------------------------------------

--№1
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, DEP_ID)
VALUES
(SEQ_TEACHER.nextval, '1', '4', 'ПРЕПОДАВАТЕЛЬ ОБЩЕЙ ФИЗИКИ', 'ДОКТОР ФИЗКО-МАТЕМАТИЧЕСКИХ НАУК', '21');
--№2
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, DEP_ID)
VALUES
(SEQ_TEACHER.nextval, '6', '10', 'ПРЕПОДАВАТЕЛЬ ЭЛЕКТРОДИНАМИКИ', 'КАНДИДАТ ФИЗИКО-МАТЕМАТИЧЕСКИХ НАУК', '21');


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
DROP SEQUENCE SEQ_SPEC;
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
DROP SEQUENCE SEQ_SG;
-- Создание последовательности:
CREATE SEQUENCE SEQ_SG
START WITH 1
INCREMENT BY 1;
-- ------------------------------------------

--№1
INSERT INTO STUDENT_GROUP
(GROUP_ID, SPEC_ID, GROUP_NAME)
VALUES
(SEQ_SG.nextval, '1', 'ФБ-151');
--№2
INSERT INTO STUDENT_GROUP
(GROUP_ID, SPEC_ID, GROUP_NAME)
VALUES
(SEQ_SG.nextval, '2', 'ФБ-151');
--№3
INSERT INTO STUDENT_GROUP
(GROUP_ID, SPEC_ID, GROUP_NAME)
VALUES
(SEQ_SG.nextval, '3', 'ФБ-151');


-- ----------------------------------------
-- Вставка данных в таблицу Ведомость
-- ----------------------------------------
DROP SEQUENCE SEQ_DS;
-- Создание последовательности:
CREATE SEQUENCE SEQ_DS
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--№1
INSERT INTO DEPARTMENT_SHEET
(DS_ID, DIS_ID, TEACHER_ID, DS_GROUP_ID)
VALUES
(SEQ_DS.nextval, '4', '3', '2');


-- ----------------------------------------
-- Вставка данных в таблицу Успеваемость студента
-- ----------------------------------------
DROP SEQUENCE SEQ_AP;
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


-- ----------------------------------------
-- Домашняя работа №3
-- ----------------------------------------

-- Создание триггера для PERSON:
create trigger t_b_person
    before insert on person for each row
begin
  select seq_person.nextval
  into :new.person_id 
  from dual;
end; 

-- ----------------------------------------
-- Создание пакета:
-- ----------------------------------------

-- Создание спецификации пакета PERSON:
-- ------------------------------------
CREATE OR REPLACE PACKAGE PKG_PERSON AS
    
    --#1 ДОБАВЛЕНИЕ PERSON
    PROCEDURE addPerson(
        p_firstname    person.firstname%TYPE, 
        p_lastname     person.lastname%TYPE, 
        p_patronimic   person.patronimic%TYPE, 
        p_fact_address person.fact_address%TYPE
        );
    
    --#2 УДАЛЕНИЕ PERSON
    PROCEDURE delPerson(
        p_person_id person.person_id%TYPE
        );
    
    --#3 КОНВЕЙЕРНАЯ ФУНКЦИЯ
    TYPE T_PERSON_ROW IS RECORD (
        PERSON_ID INTEGER,
        FIRSTNAME VARCHAR2(60),
        LASTNAME VARCHAR2(60),
        PATRONOMIC VARCHAR2(80),
        FACT_ADDRESS VARCHAR2(150),
        SID NUMBER
    );
        
        TYPE T_PERSON_TAB 
            IS TABLE OF T_PERSON_ROW;
        
        TYPE T_PERSON_REF_CURSOR 
            IS REF CURSOR RETURN PERSON_TEST%ROWTYPE;
        
    FUNCTION PTF_PERSON(P_CURSOR IN T_PERSON_REF_CURSOR)
        RETURN T_PERSON_TAB PIPELINED
            PARALLEL_ENABLE(PARTITION P_CURSOR BY ANY);
    
END PKG_PERSON;


-- Создание тела пакета PERSON_TEST:
-- ---------------------------------------
CREATE OR REPLACE PACKAGE BODY PKG_PERSON AS
   
   -- #1 Добавление человека: 
   -- Добавление в таблицу PERSON, но можно воспользоваться INSERT-ами из д/з №2 (удалив ID, т.к. теперь генерируется через триггер)
    PROCEDURE addPerson(
        p_firstname person.firstname%TYPE, 
        p_lastname person.lastname%TYPE, 
        p_patronimic person.patronimic%TYPE, 
        p_fact_address person.fact_address%TYPE
        )
    IS
            E_NULL EXCEPTION;
            PRAGMA EXCEPTION_INIT(E_NULL, -01400);
        BEGIN
            INSERT INTO PERSON (FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
                VALUES(P_FIRSTNAME, P_LASTNAME, P_PATRONIMIC, P_FACT_ADDRESS);
        EXCEPTION
            WHEN E_NULL THEN
            DBMS_OUTPUT.PUT_LINE('NULL значения недопустимы!');
    END addPerson;
    
     
    -- #2 Удаление человека
    -- Удаление из таблицы PERSON по ID.
    PROCEDURE delPerson(p_person_id person.person_id%TYPE)
    IS    
         E_NO_ID EXCEPTION;
         E_GOOD_ID EXCEPTION;
    BEGIN
        IF P_PERSON_ID = 0 THEN
        RAISE E_NO_ID;
        END IF;
        
        IF P_PERSON_ID > 0 THEN
        DELETE FROM PERSON
            WHERE PERSON_ID = P_PERSON_ID;
            DBMS_OUTPUT.put_line (SQLERRM ());
            --RAISE E_GOOD_ID;
            END IF;
    EXCEPTION
    WHEN E_NO_ID THEN
    RAISE_APPLICATION_ERROR(-20100, 'Введите id > 0');
    
    --WHEN E_GOOD_ID THEN
    --RAISE_APPLICATION_ERROR(00000, 'Все хорошо!');
    --DBMS_OUTPUT.put_line (SQLERRM ());
    END delPerson;
    
    -- #3 Конвейерная функция 
    FUNCTION PTF_PERSON (P_CURSOR IN T_PERSON_REF_CURSOR)
        RETURN T_PERSON_TAB PIPELINED
            PARALLEL_ENABLE(PARTITION P_CURSOR BY ANY)
    IS 
        F_ROW T_PERSON_ROW;
    BEGIN 
        LOOP
            FETCH P_CURSOR
            INTO F_ROW.PERSON_ID,
                 F_ROW.FIRSTNAME,
                 F_ROW.LASTNAME,
                 F_ROW.PATRONOMIC,
                 F_ROW.FACT_ADDRESS;
            EXIT WHEN P_CURSOR%NOTFOUND;
            
            SELECT SID
            INTO F_ROW.SID
            FROM v$mystat
            WHERE ROWNUM = 1;
            
            PIPE ROW (F_ROW);
        END LOOP;
        RETURN;
        END PTF_PERSON;
        
  
    END PKG_PERSON;
    
-- ------------------------------------------------

-- Создание триггера для STUDENT:
create trigger t_b_student
    before insert on student for each row
begin
  select seq_student.nextval
  into :new.student_id 
  from dual;
end; 

    -- Создание таблицы, последовательности и триггера (по подобию)
    -- Создание спецификации пакета STUDENT_TEST (для объединения)
CREATE OR REPLACE PACKAGE PKG_STUDENT AS

    --#3 КОНВЕЙЕРНАЯ ФУНКЦИЯ
    TYPE T_STUDENT_ROW IS RECORD (
        STUDENT_ID INTEGER,
        PERSON_ID INTEGER,
        PASS_ID INTEGER,
        BEGIN_DATE DATE,
        SID NUMBER
    );
        TYPE T_STUDENT_TAB 
            IS TABLE OF T_STUDENT_ROW;
        
        TYPE T_STUDENT_REF_CURSOR 
            IS REF CURSOR RETURN STUDENT%ROWTYPE;
        
    FUNCTION PTF_STUDENT(P_CURSOR IN T_STUDENT_REF_CURSOR)
        RETURN T_STUDENT_TAB PIPELINED
            PARALLEL_ENABLE(PARTITION P_CURSOR BY ANY);
    
END PKG_STUDENT;

-- Создание тела пакета STUDENT_TEST:
-- ---------------------------------------
CREATE OR REPLACE PACKAGE BODY PKG_STUDENT AS
 
    -- ---------------------------------------
    -- #3 Конвейерная функция 
    FUNCTION PTF_STUDENT (P_CURSOR IN T_STUDENT_REF_CURSOR)
        RETURN T_STUDENT_TAB PIPELINED
        PARALLEL_ENABLE(PARTITION P_CURSOR BY ANY)
    IS 
        F_ROW T_STUDENT_ROW;
    BEGIN 
        LOOP
            FETCH P_CURSOR
            INTO F_ROW.STUDENT_ID,
                 F_ROW.PERSON_ID,
                 F_ROW.PASS_ID,
                 F_ROW.BEGIN_DATE;
            EXIT WHEN P_CURSOR%NOTFOUND;
            
            SELECT SID
            INTO F_ROW.SID
            FROM v$mystat
            WHERE ROWNUM = 1;
            
            PIPE ROW (F_ROW);
        END LOOP;
        RETURN;
        END PTF_STUDENT;
        
    END PKG_STUDENT;
    
    -- Вывод результирующей таблицы (объединение, сортировка):
    SELECT STUDENT_ID, FIRSTNAME, LASTNAME, PATRONOMIC, FACT_ADDRESS FROM 
    TABLE(PKG_PERSON.ptf_PERSON(CURSOR(SELECT * FROM PERSON t1))) Z1 
    INNER JOIN 
    TABLE(PKG_STUDENT.ptf_STUDENT(CURSOR(SELECT * FROM STUDENT t2)))Z2
    ON  Z1.PERSON_ID = Z2.PERSON_ID WHERE FACT_ADDRESS LIKE '%ВОЛГОГРАД%'
    ORDER BY FIRSTNAME;
    
DROP PACKAGE PKG_PERSON;

-- -----------------------------------------------------------------------------
select * from dict;
SELECT owner, object_name, object_type FROM ALL_OBJECTS; 

SELECT OWNER, OBJECT_NAME, OBJECT_TYPE
FROM   DBA_OBJECTS
ORDER BY OWNER, OBJECT_NAME;

SELECT OBJECT_NAME, OBJECT_TYPE 
FROM   USER_OBJECTS
ORDER BY OBJECT_NAME;