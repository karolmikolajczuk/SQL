SET SERVEROUTPUT ON

DECLARE
    v_rekord klient%ROWTYPE;
    
    CURSOR cur_klient IS
        SELECT * --imie, nazwisko
        FROM klient
        WHERE id < 10;
        
BEGIN
    OPEN cur_klient;

    LOOP
        FETCH cur_klient INTO v_rekord;
        EXIT WHEN cur_klient%NOTFOUND;
        dbms_output.put_line(v_rekord.imie || ' ' || v_rekord.nazwisko);
    END LOOP;

    CLOSE cur_klient;
END;