SET SERVEROUTPUT ON

DECLARE
	v_tekst VARCHAR2(42) := 'Baza danych to uporządkowany zbiór danych';
	v_liczba NUMBER(5, 4) := 2.7182;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE(v_tekst || ' ' || v_liczba);
END;