SET SERVEROUTPUT ON

DECLARE
    v_licznik       PLS_INTEGER         := 1;
    
BEGIN
    -- PĘTLA LOOP
    LOOP
        dbms_output.put_line('Wiersz numer ' || v_licznik);
        v_licznik := v_licznik + 1;
        
        EXIT WHEN v_licznik=10;
    END LOOP;
    
    -- PĘTLA FOR
    FOR licznik IN 1..9 LOOP
        dbms_output.put_line('Wiersz numer ' || licznik);
    END LOOP;
    
    -- PĘTLA FOR-REVERSE
    FOR licznik IN REVERSE 1..9 LOOP
        dbms_output.put_line('Wiersz numer ' || licznik);
    END LOOP;

    v_licznik := 1;
    
    -- PĘTLA WHILE
    WHILE v_licznik < 10 LOOP
        dbms_output.put_line('Wiersz numer ' || v_licznik);
        v_licznik := v_licznik + 1;
    END LOOP;
    
    -- PĘTLA nazwana
    v_licznik := 1;
    
    <<jeden>>
    WHILE v_licznik <= 10 LOOP
        <<dwa>>
        FOR v_j IN 1..10 LOOP
            dbms_output.put_line('v_licznik=' || v_licznik || ', v_j=' || v_j);
            EXIT jeden WHEN v_j=5;
        END LOOP dwa;
        
        v_licznik := v_licznik + 1;
    END LOOP jeden;
    
    
END;