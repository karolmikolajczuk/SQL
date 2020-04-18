SET SERVEROUTPUT ON

DECLARE
    v_record        klient%ROWTYPE;
    CURSOR cur_klient IS 
                SELECT * 
                FROM klient 
                WHERE id < 10;
BEGIN
    IF NOT cur_klient%ISOPEN THEN
        OPEN cur_klient;
    END IF;
    
    LOOP
        FETCH cur_klient INTO v_record;
        EXIT WHEN cur_klient%NOTFOUND;
        dbms_output.put_line('Pobrano rekord numer ' ||
            cur_klient%ROWCOUNT || ': ' || v_record.imie || ' ' ||
            v_record.nazwisko);
    END LOOP;
    CLOSE cur_klient;

END;