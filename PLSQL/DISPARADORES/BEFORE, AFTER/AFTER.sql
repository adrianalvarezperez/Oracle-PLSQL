--------------------------------------------------------
-- Archivo creado  - miércoles-marzo-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIGGER_AFTER_INSERT_DEPART
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRIGGER_AFTER_INSERT_DEPART" 
AFTER INSERT ON DEPARTMENTS 


BEGIN

  DBMS_OUTPUT.PUT_LINE('DEPARTAMENTO INSERTADO......');
  
END;
/
ALTER TRIGGER "HR"."TRIGGER_AFTER_INSERT_DEPART" ENABLE;
