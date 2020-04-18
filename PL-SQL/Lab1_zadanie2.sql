SET SERVEROUTPUT ON
ACCEPT podaj_liczbe PROMPT 'Podaj liczbe:';

DECLARE
	v_liczba1 PLS_INTEGER := &podaj_liczbe;
	v_liczba2 PLS_INTEGER := &podaj_liczbe;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE((v_liczba1*v_liczba2));

END;