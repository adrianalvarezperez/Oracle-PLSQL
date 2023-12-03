SET SERVEROUTPUT ON


DECLARE
            -- TE CREA EL MISMO TIPO DE DATO, QUE LA COLUMNA LAST_NAME DE LA TABLA EMPLOYEES
            APELLIDO EMPLOYEES.LAST_NAME%TYPE;
            SALARIO EMPLOYEES.SALARY%TYPE;
            FECHA EMPLOYEES.HIRE_DATE%TYPE;
            DEPARTAMENTO EMPLOYEES.DEPARTMENT_ID%TYPE;
            
            CUANTOS PLS_INTEGER := 0;



BEGIN
            -- LAS VARIABLES DE INTO SON LA DE ARRIBA, EL RESTO ES LA CONSULTA
            SELECT LAST_NAME, SALARY, HIRE_DATE, DEPARTMENT_ID
            INTO APELLIDO, SALARIO, FECHA, DEPARTAMENTO
            FROM EMPLOYEES
            WHERE EMPLOYEE_ID= &EMPLEADO_ID;  -- & + UNA PALABRA PARA PEDIR DATOS POR ALERTA
           -- WHERE EMPLOYEE_ID= 114;

            DBMS_OUTPUT.PUT_LINE('APELLIDO: '||APELLIDO||CHR(10)||'SALARIO: '||SALARIO||CHR(13)||
            'FECHA: '||FECHA||CHR(10)||'DEPARTAMENTO: '||DEPARTAMENTO);

        
            -- CANTIDAD DE EMPLEADOS QUE HAY, EN EL DEPARTAMENTO QUE RECOGI EN LAS VARIABLES DE ARRIBA DEL EMPLEADO 114
            SELECT COUNT(*)
            INTO CUANTOS
            FROM EMPLOYEES
            WHERE DEPARTMENT_ID= DEPARTAMENTO;  -- VARIABLE CON EL NUMERO GUARDADO
            
            DBMS_OUTPUT.PUT_LINE('CANTIDAD DE EMPLEADOS '||CUANTOS);

END;
/