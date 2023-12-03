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
                
                -- FUNCION
                IF EXISTE_FILA_JOBS (JOBID_500, FILA_JOB_800)= TRUE THEN
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID EXISTE: '||FILA_JOB.JOB_TITLE);
                ELSE
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID TECLEADO NO EXISTE');
                END IF;
                
   
EXCEPTION

                WHEN NO_DATA_FOUND THEN
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID TECLEADO NO,  NO EXISTE');
                WHEN OTHERS THEN
                    DBMS_OUTPUT.PUT_LINE('ERROR EN _PL_SQL_05_.sql : '||SQLERRM);

END;
/