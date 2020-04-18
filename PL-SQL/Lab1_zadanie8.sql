SET SERVEROUTPUT ON
ACCEPT podaj_wiek PROMPT 'Podaj ile masz lat:';

DECLARE
	v_lata NUMBER(3) := &podaj_wiek;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('Masz ' || v_lata || ' lat.');
	
END;