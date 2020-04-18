SET SERVEROUTPUT ON

DECLARE
    v_rekord klient%ROWTYPE;
    
    CURSOR cur_klient IS
        SELECT * --imie, nazwisko
        FROM klient
        WHERE id < 10;
        
BEGIN
    OPEN cur_klient;

    FETCH cur_klient INTO v_rekord;
    WHILE cur_klient%FOUND LOOP
        dbms_output.put_line(v_rekord.imie || ' ' || v_rekord.nazwisko);

        FETCH cur_klient INTO v_rekord;
    END LOOP;

    CLOSE cur_klient;
END;