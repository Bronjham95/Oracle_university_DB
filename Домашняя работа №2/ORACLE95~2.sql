SET LONG 9000
SET pagesize 1000
SET linesize 100
SET serverout ON
SET heading ON
SET ver OFF
SET scan ON
-- ------------------------------

select
username, --Логин
account_status, --Статус аккаунта
lock_date --дата блокировки(если пользователь заблокирован)
from dba_users;

select owner
     , object_name
     , object_type
  from ALL_OBJECTS
 where OWNER = 'TEST';
 
 SELECT DBMS_METADATA.GET_DDL(OBJECT_TYPE, 'PERSON', 'TEST') AS DDL_CODE 
 FROM DBA_OBJECTS t
 WHERE t.OBJECT_TYPE = 'TABLE';
 
SELECT DBMS_METADATA.GET_DDL('TABLE', 'PERSON', 'TEST') FROM dual; 
SELECT DBMS_METADATA.GET_DDL('PACKAGE', 'PKG_PERSON', 'TEST') FROM DUAL;
 
DROP FUNCTION ADDOBJECT;
 
 CREATE FUNCTION addObject(f_object_type IN VARCHAR2, f_object_name IN VARCHAR2, f_owner IN VARCHAR2 DEFAULT NULL)
    RETURN CLOB IS
    STR CLOB;
BEGIN 
 STR := DBMS_METADATA.GET_DDL(f_object_type, f_object_name, f_owner);
    RETURN STR;
END;

DECLARE 
STR CLOB;
BEGIN
STR := addobject('TABLE', 'STUDENT', 'TEST');
DBMS_OUTPUT.PUT_LINE(STR);
END;

select * from dictionary;

