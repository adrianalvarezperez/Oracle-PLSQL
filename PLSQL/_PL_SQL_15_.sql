 SET SERVEROUTPUT ON
 SET VERIFY OFF
 
 -- ----------------------------------------------------------------------------
 
 DECLARE
 
        NUM PLS_INTEGER := 0;   

-- ----------------------------------------------------------------------------- 
 
 BEGIN
        -- FOR
        FOR NUM IN 1 .. 10 LOOP
            DBMS_OUTPUT.PUT_LINE(NUM);
        END LOOP;   
-- -----------------------------------------------------------------------------       
        -- FOR REVERSE
        FOR NUM IN REVERSE 1 .. 10 LOOP
            DBMS_OUTPUT.PUT_LINE(NUM);
        END LOOP;

-- -----------------------------------------------------------------------------

 EXCEPTION
 
        WHEN OTHERS THEN
           DBMS_OUTPUT.PUT_LINE('ERROR EN PROGRAMA _PL_SQL_13.sql : '||SQLERRM);
 
-- ----------------------------------------------------------------------------- 
 END;
 / 