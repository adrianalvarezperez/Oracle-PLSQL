 -- CON ESTO FUNCIONA EL ---> DBMS_OUTPUT.PUT_LINE();
 SET SERVEROUTPUT  ON
 
 
 DECLARE 
 
          -- NOMBRE VARIBALE + TIPO + INICIALIZACION VARIABLE
 
          NOMBRE VARCHAR2(45) := 'CRUCEROS';
          
          EDAD NUMBER(3) := 31; 
  
          CONTADOR PLS_INTEGER := 0;
          
          APELLIDO VARCHAR2(45) := 'VELERS';
 
          SALARIO DEC(9,2) := 12000.56; 
            
          SALARIO2 NUMBER(9,2) := 0;
          
          EXISTE BOOLEAN := FALSE;
          
          FECHA_NACIMIENTO DATE;
          
          SALARIO_MAX CONSTANT NUMBER(9,2) := 50000;
          
          PI CONSTANT DEC(9,2) := 3.1416;
          
          
          -- TE CREA EL MISMO TIPO DE DATO, QUE LA COLUMNA SALARY DE LA TABLA EMPLOYEES
          SALARRIO EMPLOYEES.SALARY%TYPE;     
          
          DEPT_NAME DEPARTMENTS.DEPARTMENT_NAME%TYPE;
          
 BEGIN
 
         -- PI:= 45; DA ERROR AL SER CONSTANTE
         CONTADOR:= 5;
        
         -- SACA POR PANTALLA
         DBMS_OUTPUT.PUT_LINE('HOLA SOY '||NOMBRE||' Y SOY TU PROFE');
         DBMS_OUTPUT.PUT_LINE('TU EDAD ES DE: '||EDAD||' AÑOS');
         DBMS_OUTPUT.PUT_LINE('CONTADOR= '||CONTADOR);
         
         
 END;
 /