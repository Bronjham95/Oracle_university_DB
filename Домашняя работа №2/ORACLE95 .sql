-- -------------------------------------------------------------
-- ���������� ������
-- --------------------------------------------------------------
-- ������� ������ � ������� PERSON
-- --------------------------------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_PERSON
START WITH 1
INCREMENT BY 1;
-- --------------------------

-- �1
INSERT  INTO PERSON 
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval , '������' , '��������' , '����������' , '�. ��������� | ��-� ��������������� 100' );
-- �2
INSERT  INTO PERSON 
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '�����', '�����', '��������', '�.��������� | ��.��������� 24');
-- �3
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '���������', '��������', '������������', '�.��������� | ��.��������� 19');
-- �4
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '������', '���������', '����������', '�.��������� | ��.������� �������� 9');
--�5
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '��������', '�������', '����������', '�.��������� | ��-� ���� ������ 3');
--�6
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '�������', '�������', '���������', '�.��������� | ��.���������� 9');
--�7
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '����', '������', '�����������', '�.��������� | ��.������������� 17�');
--�8
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '�����', '��������', '���������', '�.��������� | ��.���������� 12');
--�9
INSERT  INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '����', '���������', '�����������', '�.��������� | ��.�������� 23');
--�10
INSERT INTO PERSON
(person_id, FIRSTNAME, LASTNAME, PATRONIMIC, FACT_ADDRESS)
VALUES (SEQ_PERSON.nextval, '���������', '�������', '��������', '�.��������� | ��.�������� 14');


-- ----------------------------------------
-- ������� ������ � ������� PASSPORT
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_PASSPORT
START WITH 1
INCREMENT BY 1;
-- --------------------------

--�1
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4325', '345623', '�.��������� | ��.��������� 24');
--�2
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '2495', '236078', '�.����� | ��.����������� 12');
--�3
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '1756', '563278', '�.��������� | ��.�������� ������� 17/3');
--�4
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4590', '634902', '�.��������� | ��.���������� 9');
--�5
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '2350', '367564', '�.��������� | ��.��������� 19');
--�6
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '3267', '612756', '�.��������� | ��.�������� 14');
--�7
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '9080', '530270', '�.��������� | ��-� ��������������� 100');
--�8
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '1710', '650320', '�.��������� | ��.���������� 12');
--�9
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '4632', '640670', '�.������� | ��.������ �������� 32');
--�10
INSERT INTO PASSPORT
(PASS_ID, PASS_SN, PASS_NUM, PASS_REG)
VALUES
(SEQ_PASSPORT.nextval, '6420', '123567', '�.��������� | ��-� ���� ������');


-- ----------------------------------------
-- ������� ������ � ������� STUDENT
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_STUDENT
START WITH 1
INCREMENT BY 1;
-- --------------------------

--�1
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval,'3', '1', '02.08.2016');
--�2
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '4', '2', '18.08.2016');
--�3
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '5', '3', '03.08.2016');
--�4
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '2', '5', '17.08.2016');
--�5
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '7', '6', '03.08.2016');
--�6
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '8','7', '17.08.2016');
--�7
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '9', '8', '03.08.2016');
--�8
INSERT INTO STUDENT
(STUDENT_ID, PERSON_ID, PASS_ID, BEGIN_DATE)
VALUES
(SEQ_STUDENT.nextval, '10','9', '03.08.2016');


-- ----------------------------------------
-- ������� ������ � ������� ��������
-- ----------------------------------------

-- �������� ������������������:
-- --------------------------
CREATE SEQUENCE SEQ_INST
START WITH 1
INCREMENT BY 1;
-- -------------------------

--�1
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, '�������� ���������� � �������������� ����������', '������� ������� ��������','89608674531' ,'VAS_MOROZ@VOLSU.RU');
--�2
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, '�������� ������������ ����������', '����� ��������� ����������', '8405601275', 'ARTUR_GEV@VOLSU.RU');
--�3
INSERT INTO INSTITUTE
(INST_ID, INST_NAME, INST_DEAN, TELEPHONE, E_MAIL)
VALUES
(SEQ_INST.nextval, '�������� �����', '������ ��������� �����������', '89273285689', 'SOKRAT_GREAT@VOLSU.RU');


-- ----------------------------------------
-- ������� ������ � ������� �������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_DEPARTMENT
START WITH 1
INCREMENT BY 1;
-- ---------------------------

--�1
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', '������� ������������� ������ � �������� ���������', '�������� ���� ��������');
--�2
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', '������� �����������', '���� ��������� ����������');
--�3
INSERT INTO DEPARTMENT
(DEP_ID, INST_ID, DEP_NAME, DEP_HEAD)
VALUES
(SEQ_DEPARTMENT.nextval, '1', '������� ������������', '������ ��� ���������');


-- ----------------------------------------
-- ������� ������ � ������� �������������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_TEACHER
START WITH 1
INCREMENT BY 1;
-- ---------------------------------------

--�1
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, DEP_ID)
VALUES
(SEQ_TEACHER.nextval, '1', '4', '������������� ����� ������', '������ �����-�������������� ����', '1');
--�2
INSERT INTO TEACHER
(TEACHER_ID, PERSON_ID, PASS_ID, T_POSITION, AC_DEGREE, D_ID)
VALUES
(SEQ_TEACHER.nextval, '6', '10', '������������� ���������������', '�������� ������-�������������� ����', '1');


-- ----------------------------------------
-- ������� ������ � ������� ����������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_DISCIPLINE
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--�1
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '�������������� ������', '1', '187', '����� � �������');
--�2
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '������������� ��������� � �������� �������', '1', '143', '�������');
--�3
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '��������� � ��������� ������', '2', '109', '�����');
--�4
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '��������', '1', '240', '�������');
--�5
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '������ ����� �', '1', '135', '�����');
--�6
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '������� ����������', '1', '102', '����� � �������');
--�7
INSERT INTO DISCIPLINE
(DIS_ID, DIS_NAME, DIS_TIME, DIS_TERM, T_REPORT)
VALUES
(SEQ_DISCIPLINE.nextval, '������ ����������������� �������', '2', '84', '�����');


-- ----------------------------------------
-- ������� ������ � ������� �������������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_SPEC
START WITH 1
INCREMENT BY 1;
-- ---------------------------------------

--�1
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, '������', '�����������');
--�2
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, '�����������', '�����������');
--�3
INSERT INTO SPECIALIZATION
(SPEC_ID, SPEC_NAME, SPEC_LVL)
VALUES
(SEQ_SPEC.nextval, '���������� ����������', '�����������');


-- ----------------------------------------
-- ������� ������ � ������� ������������ ������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_SG
START WITH 1
INCREMENT BY 1;
-- ------------------------------------------

--�1
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, '��-151', '1');
--�2
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, '���-151', '2');
--�3
INSERT INTO STUDENT_GROUP
(GROUP_ID, GROUP_NAME, SPEC_ID)
VALUES
(SEQ_SG.nextval, '���-151', '3');


-- ----------------------------------------
-- ������� ������ � ������� ���������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_DS
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--�1
INSERT INTO DEPARTMENT_SHEET
(DS_ID, DIS_ID, TEACHER_ID, DS_GROUP_ID)
VALUES
(SEQ_DS.nextval, '4', '1', '2');


-- ----------------------------------------
-- ������� ������ � ������� ������������ ��������
-- ----------------------------------------

-- �������� ������������������:
CREATE SEQUENCE SEQ_AP
START WITH 1
INCREMENT BY 1;
-- ----------------------------------------

--�1
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '1', '61', '�����');
--�2
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '2', '71', '�����');
--�3
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '3', '61', '�����');
--�4
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '4', '54', '�� �����');
--�5
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '5', '33', '�� �����');
--�6
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '6', '85', '�����');
--�7
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1','7', '63', '�����');
--�8
INSERT INTO ACADEM_PER
(AP_ID, DS_ID, STUDENT_ID, AP_POINT, AP_TEST)
VALUES
(SEQ_AP.nextval, '1', '8', '91', '�����' );
