SET SERVEROUTPUT ON

DECLARE
    v_ilosc     NUMBER;

BEGIN
    SELECT COUNT(*)
    INTO v_ilosc
    FROM klient;
    
    dbms_output.put_line('Ilosc klientow: ' || v_ilosc);

END;

DECLARE
    v_imie          klient.imie%TYPE;
    v_data_ur       klient.data_ur%TYPE;

BEGIN
    SELECT imie, data_ur
    INTO v_imie, v_data_ur
    FROM klient
    WHERE id=2;
    
    dbms_output.put_line('Imie: ' || v_imie);
    dbms_output.put_line('Data urodzenia: ' || v_data_ur);

END;