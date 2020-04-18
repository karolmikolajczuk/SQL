SET SERVEROUTPUT ON

DECLARE
    v_index     PLS_INTEGER         := 1;

BEGIN
    WHILE v_index <= 10 LOOP
        IF v_index = 2 OR v_index THEN
            GOTO etykieta;
        END IF;
        
        dbms_output.put_line('v_index=' || v_index);
        
        <<etykieta>>
        v_index := v_index + 1;
    END LOOP;
    
    FOR v_licznik IN 1..10 LOOP
        CONTINUE WHEN v_licznik > 5;
        
        dbms_output.put_line('v_licznik=' || v_licznik);
    END LOOP;
END;