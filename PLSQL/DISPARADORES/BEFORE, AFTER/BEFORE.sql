--------------------------------------------------------
-- Archivo creado  - miércoles-marzo-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIGGER_BEFORE_INSERT_DEPART
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_BEFORE_INSERT_DEPART" 
BEFORE INSERT ON DEPARTMENTS


BEGIN

  DBMS_OUTPUT.PUT_LINE('SE ESTA INSERTANDO EL DEPARTAMENTO Y EL USUARIO ES: '||USER);
 -- INSERT INTO AUDITOR_HR
 -- VALUES(USER, SYSTIMESTAMP, 'cHEMA aLONSO');
END;
/
ALTER TRIGGER "HR"."TRIGGER_BEFORE_INSERT_DEPART" ENABLE;
