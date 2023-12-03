
CREATE OR REPLACE TRIGGER TRIGGER_CIUDADES 
BEFORE INSERT ON LOCATIONS 

    FOR EACH ROW
    WHEN (NEW.CITY <> 'MADRID') BEGIN

    DBMS_OUTPUT.PUT_LINE('DATOS...'|| :NEW.STREET_ADDRESS);
  
  
    IF :NEW.CITY IS NULL THEN           -- SI LA LOCALIZACION QUE LE PASAS, ES NULO, PONE BURGOS POR DEFECTO Y PUNTO
        :NEW.CITY := 'BURGOS';
    END IF;
    
    
    IF :NEW.STREET_ADDRESS <> UPPER(:NEW.STREET_ADDRESS) THEN     -- SI EL NOMBRE QUE LE PASAS, ES DISTINTO, DE ESE MISMO NOMBRE PASADO EN MAYUSCULAS (SI ESTA EN MINUSCULAS), LO PONE EN MAYUSCULAS
        :NEW.STREET_ADDRESS := UPPER(:NEW.STREET_ADDRESS);        -- OSEA ME HAN TECLEADO MADRID EN MINUSCULA...LO PASO A MAYUSCULAS...
    END IF;
    
    
    IF :NEW.CITY= 'SEGOVIA' THEN             -- SI EL NOMBRE PASADO ES SEGOVIA (QUE NO ESTA EN LA TABLA) ERROR
        RAISE_APPLICATION_ERROR(-20000, 'NO INSERTAR DATOS DE SEGOVIA');
    END IF;
  
END TRIGGER_CIUDADES ;
/
