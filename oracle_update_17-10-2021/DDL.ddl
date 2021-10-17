-- Generated by Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   at:        2021-10-17 12:26:35 GMT+03:00
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE academ_per (
    ap_id      INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    point      INTEGER NOT NULL,
    test       VARCHAR2(15) NOT NULL
);

CREATE UNIQUE INDEX ifk_student_ap ON
    academ_per (
        student_id
    ASC );

ALTER TABLE academ_per ADD CONSTRAINT pk_ap PRIMARY KEY ( ap_id,
                                                          student_id );

CREATE TABLE department (
    dep_id     INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    dep_name   VARCHAR2(50) NOT NULL,
    dep_head   VARCHAR2(90) NOT NULL
);

CREATE INDEX ifk_dep_teach ON
    department (
        dep_id
    );

ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY ( dep_id );

CREATE TABLE department_sheet (
    ds_id      INTEGER NOT NULL,
    ap_id      INTEGER NOT NULL,
    dis_id     INTEGER NOT NULL,
    teacher_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    sg_id      INTEGER NOT NULL,
    special_id INTEGER NOT NULL
);

CREATE UNIQUE INDEX ifk_ap_stud ON
    department_sheet (
        ap_id
    ASC,
        student_id
    ASC );

CREATE UNIQUE INDEX ifk_dis_ds ON
    department_sheet (
        dis_id
    ASC );

CREATE UNIQUE INDEX ifk_sg_special ON
    department_sheet (
        sg_id
    ASC,
        special_id
    ASC );

CREATE UNIQUE INDEX ifk_teach_ds ON
    department_sheet (
        teacher_id
    ASC );

ALTER TABLE department_sheet
    ADD CONSTRAINT pk_dh PRIMARY KEY ( ds_id,
                                       ap_id,
                                       student_id,
                                       dis_id );

CREATE TABLE discipline (
    dis_id   INTEGER NOT NULL,
    dis_name VARCHAR2(50) NOT NULL,
    time     INTEGER NOT NULL,
    term     INTEGER NOT NULL,
    t_report VARCHAR2(15) NOT NULL
);

ALTER TABLE discipline ADD CONSTRAINT pk_discip PRIMARY KEY ( dis_id );

CREATE TABLE institute (
    inst_id   INTEGER NOT NULL,
    dep_id    INTEGER NOT NULL,
    inst_name VARCHAR2(50) NOT NULL,
    inst_dean VARCHAR2(90) NOT NULL,
    telephone VARCHAR2(15) NOT NULL,
    "E-MAIL"  VARCHAR2(50) NOT NULL
);

CREATE INDEX ifk_inst_dep ON
    institute (
        inst_id
    );

ALTER TABLE institute ADD CONSTRAINT pk_institute PRIMARY KEY ( inst_id );

CREATE TABLE passport (
    pass_id  INTEGER NOT NULL,
    pass_sn  INTEGER NOT NULL,
    pass_num INTEGER NOT NULL,
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

ALTER TABLE specialization ADD CONSTRAINT pk_special PRIMARY KEY ( spec_id );

CREATE TABLE student (
    student_id  INTEGER NOT NULL,
    person_id   INTEGER NOT NULL,
    passport_id INTEGER NOT NULL,
    begin_date  DATE NOT NULL
);

CREATE UNIQUE INDEX ifk_passport_student ON
    student (
        passport_id
    ASC );

CREATE UNIQUE INDEX ifk_person_student ON
    student (
        person_id
    ASC );

ALTER TABLE student ADD CONSTRAINT pk_student PRIMARY KEY ( student_id );

CREATE TABLE student_group (
    group_id   INTEGER NOT NULL,
    special_id INTEGER NOT NULL,
    group_name VARCHAR2(10) NOT NULL
);

CREATE UNIQUE INDEX ifk_special_sg ON
    student_group (
        special_id
    ASC );

ALTER TABLE student_group ADD CONSTRAINT pk_sg PRIMARY KEY ( group_id,
                                                             special_id );

CREATE TABLE teacher (
    teacher_id  INTEGER NOT NULL,
    person_id   INTEGER NOT NULL,
    passport_id INTEGER NOT NULL,
    position    VARCHAR2(50) NOT NULL,
    ac_degree   VARCHAR2(50)
);

CREATE UNIQUE INDEX ifk_teach_pass ON
    teacher (
        passport_id
    ASC );

CREATE UNIQUE INDEX ifk_teach_per ON
    teacher (
        person_id
    ASC );

ALTER TABLE teacher ADD CONSTRAINT pk_teacher PRIMARY KEY ( teacher_id );

ALTER TABLE academ_per
    ADD CONSTRAINT fk_ap_student FOREIGN KEY ( student_id )
        REFERENCES student ( student_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_as_sg FOREIGN KEY ( sg_id,
                                          special_id )
        REFERENCES student_group ( group_id,
                                   special_id );

ALTER TABLE department
    ADD CONSTRAINT fk_dep_teach FOREIGN KEY ( teacher_id )
        REFERENCES teacher ( teacher_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_dh_dis FOREIGN KEY ( dis_id )
        REFERENCES discipline ( dis_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_dh_teach FOREIGN KEY ( teacher_id )
        REFERENCES teacher ( teacher_id );

ALTER TABLE department_sheet
    ADD CONSTRAINT fk_ds_ap FOREIGN KEY ( ap_id,
                                          student_id )
        REFERENCES academ_per ( ap_id,
                                student_id );

ALTER TABLE institute
    ADD CONSTRAINT fk_inst_dep FOREIGN KEY ( dep_id )
        REFERENCES department ( dep_id );

ALTER TABLE student_group
    ADD CONSTRAINT fk_sg_special FOREIGN KEY ( special_id )
        REFERENCES specialization ( spec_id );

ALTER TABLE student
    ADD CONSTRAINT fk_stud_pass FOREIGN KEY ( passport_id )
        REFERENCES passport ( pass_id );

ALTER TABLE student
    ADD CONSTRAINT fk_stud_per FOREIGN KEY ( person_id )
        REFERENCES person ( person_id );

ALTER TABLE teacher
    ADD CONSTRAINT fk_teach_pass FOREIGN KEY ( passport_id )
        REFERENCES passport ( pass_id );

ALTER TABLE teacher
    ADD CONSTRAINT fk_teach_per FOREIGN KEY ( person_id )
        REFERENCES person ( person_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                            12
-- ALTER TABLE                             23
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
