SET SERVEROUTPUT ON

VARIABLE v_imie VARCHAR2(15);
/

BEGIN
    :v_imie := 'IMIE';
/*
    SELECT imie INTO :v_imie
        FROM klient
        WHERE id=2;
*/
END;
/

PRINT v_imie;