 SET SERVEROUTPUT ON
 SET VERIFY OFF
 
 -- ----------------------------------------------------------------------------
 
 DECLARE
 
        NUM PLS_INTEGER := 0;   

-- ----------------------------------------------------------------------------- 
 
 BEGIN
        -- DO WHILE
        LOOP
            DBMS_OUTPUT.PUT_LINE(NUM);
            NUM := NUM+1;
            EXIT WHEN NUM > 10;
         END LOOP;   
-- -----------------------------------------------------------------------------       

 EXCEPTION
 
        WHEN OTHERS THEN
           DBMS_OUTPUT.PUT_LINE('ERROR EN PROGRAMA _PL_SQL_13.sql : '||SQLERRM);
 
-- ----------------------------------------------------------------------------- 
 END;
 / 