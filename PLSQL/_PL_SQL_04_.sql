SET SERVEROUTPUT ON

SET VERIFY OFF  -- QUITA TODA LA MIERDA QUE SALE POR CONSOLA

DECLARE
                        
            -- ME CREA ESTA VARIABLE. CAMPO COMPUESTO DE TANTOS CAMPOS COMO COLUMNAS TIENE LA TABLA
            -- COMO EN SI FUERA UN ARRAY
            -- SE CREAN CON LOS MISMOS NOMBRES QUE TIENEN CADA COLUMNA Y MISMO TIPO
            -- SE ACCEDE A EL CON ---> FILA_EMPLEADO PARA TODOS 
            -- O PARA UNO O LOS QUE SEAN CON ----> FILA_EMPLEADOS.NOMBRE_COLUMNA
            FILA_EMPLEADOS800 EMPLOYEES%ROWTYPE;


BEGIN
            -- QUE HACER, PARA QUE AL SACAR TODAS LAS COLUMNAS, NO ALLA QUE CREAR TODAS LAS VARIABLES
            SELECT *
            INTO FILA_EMPLEADOS800
            FROM EMPLOYEES
            WHERE EMPLOYEE_ID= 200;
            
            DBMS_OUTPUT.PUT_LINE('APELLIDO: '||FILA_EMPLEADOS.LAST_NAME||CHR(10)||'SALARIO: '||FILA_EMPLEADOS.SALARY||CHR(13)||
            'FECHA: '||FILA_EMPLEADOS.HIRE_DATE||CHR(10)||'DEPARTAMENTO: '||FILA_EMPLEADOS.DEPARTMENT_ID);

END;
/