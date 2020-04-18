SET SERVEROUTPUT ON

DECLARE
    v_imie VARCHAR2(15);
    v_nazw VARCHAR2(20);
    v_rekord klient%ROWTYPE;
    
    
    CURSOR cur_klient IS
        SELECT * --imie, nazwisko
        FROM klient
        WHERE id < 10;
        
    CURSOR cur2_klient IS
        SELECT *
        FROM klient
        WHERE rabat >= 5;
        
BEGIN
    OPEN cur_klient;
    FETCH cur_klient INTO v_rekord;

    v_imie := v_rekord.imie;
    v_nazwisko := v_rekord.nazwisko;
    
    dbms_output.put_line(v_imie || ' ' || v_nazwisko);
    
    CLOSE cur_klient;
END;