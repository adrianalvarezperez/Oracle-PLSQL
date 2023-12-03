--------------------------------------------------------
-- Archivo creado  - miércoles-marzo-02-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIGGER_JEFE_SUELDO_NO_SUPERA
--------------------------------------------------------

CREATE OR REPLACE TRIGGER "HR"."TRIGGER_JEFE_SUELDO_NO_SUPERA" 
BEFORE INSERT ON EMPLOYEES          -- ANTES DE INSERTAR LA TABLA DE EMPLOYEES


FOR EACH ROW 
WHEN (NEW.MANAGER_ID IS NOT NULL AND NEW.SALARY IS NOT NULL AND NEW.DEPARTMENT_ID IN(10, 20, 30)) DECLARE 
-- SIEMPRE Y CUANDO EL JEFE TRAIGA CONTANIDO, EL SALARY TRAIGA CONTENIDO Y ADEMAS EL DEPARTAMENTO SEA EL 10, 20 O 30
    VAR_SALARIO EMPLOYEES.SALARY%TYPE;


BEGIN

            SELECT SALARY
            INTO VAR_SALARIO
            FROM EMPLOYEES
            WHERE EMPLOYEE_ID= :NEW.MANAGER_ID;


            IF VAR_SALARIO < :NEW.SALARY THEN
                 RAISE_APPLICATION_ERROR(-20200, 'TU SALARIO NO PUEDE SER MAYOR QUE EL DE TU JEFE');
            END IF;
  
  
  
  
END;
/
ALTER TRIGGER "HR"."TRIGGER_JEFE_SUELDO_NO_SUPERA" ENABLE;
