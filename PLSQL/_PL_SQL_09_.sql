SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
                CUANTOS PLS_INTEGER :=0;
                
                -- CREA ESA VARIABLE, DE LA TABLA JOBS
                -- COMO SI FUERA UN ARRAY
                -- CON LOS MISMOS NOMBRE QUE TIENEN CADA COLUMNA Y MISMO TIPO
                FILA_JOB_800 JOBS%ROWTYPE;
        
                JOBID_500 JOBS.JOB_ID%TYPE;

BEGIN
                -- PIDE DATOS POR ALERTA. ENTRE ' ' SI VAS A METER UNA CADENA
                JOBID_500 := '&JID';
                
                -- CUENTA LAS FILAS DE LA TABLA JOBS DE LA COLUMNA JOS_ID, DEL JOB_ID ---> 'IT_PROG'
                SELECT COUNT(*)
                INTO CUANTOS
                FROM JOBS
                WHERE JOB_ID= JOBID_500;
                
                -- CONFICIONAL IF/ELSE
                IF CUANTOS= 1 THEN
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID EXISTE');
                ELSE
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID NO EXISTE');
                END IF;
                -- ----------------------------------------------------------------------------------------
                -- ----------------------------------------------------------------------------------------
                -- ----------------------------------------------------------------------------------------
                
                -- SACA LA COLUMNA JOB_TITLE DE LA TABLA JOBS, DEL JOB_ID 'IT_PROG'
                SELECT *
                INTO FILA_JOB_800
                FROM JOBS
                WHERE JOB_ID= 'JT_PROG';
                
                DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID EXISTE ---> '||FILA_JOB.JOB_TITLE);
                -- ---------------------------------------------------------------------------------------
EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID TECLEADO NO,  NO EXISTE');
                WHEN OTHERS THEN
                    DBMS_OUTPUT.PUT_LINE('ERROR EN _PL_SQL_05_.sql : '||SQLERRM);
END;
/