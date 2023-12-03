/*SELECT COUNT(*)
FROM JOBS
WHERE JOB_ID='IT_PROG';


SELECT *
FROM JOBS
WHERE JOB_ID= 'IT_PROG';


SELECT *
FROM JOBS
WHERE JOB_ID= 'it_prog';
*/

-- -----------------------------------------------------------------------------


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
                
                
                DBMS_OUTPUT.PUT_LINE('FILAS: '||CUANTOS);

EXCEPTION

                WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('ERROR EN _PL_SQL_05_.sql : '||SQLERRM);

END;
/