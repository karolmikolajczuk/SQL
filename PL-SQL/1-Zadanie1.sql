SET SERVEROUTPUT ON

DECLARE
    v_tekst VARCHAR(50) := 'Baza danych to uporzadkowany zbior danych';
    v_liczba NUMBER(5) := 2.7182;
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_tekst || ' ' || v_liczba);
END;