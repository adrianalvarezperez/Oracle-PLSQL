SET SERVEROUTPUT ON

SET VERIFY OFF

DECLARE
        
                CUANTOS PLS_INTEGER :=0;

BEGIN

                -- CUENTA LAS FILAS DE LA TABLA JOBS DE LA COLUMNA JOS_ID, DEL JOB_ID ---> 'IT_PROG'
                SELECT COUNT(*)
                INTO CUANTOS
                FROM JOBS
                WHERE JOB_ID='IT_PROG';
                
                -- CONFICIONAL IF/ELSE
                IF CUANTOS= 1 THEN
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID EXISTE');
                ELSE
                    DBMS_OUTPUT.PUT_LINE('ESTE JOB_ID NO EXISTE');
                END IF;
                
                
                
EXCEPTION

                WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('ERROR EN _PL_SQL_05_.sql : '||SQLERRM);

END;
/