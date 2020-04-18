SET SERVEROUTPUT ON
ACCEPT podaj_promien PROMPT 'Podaj promien:';

DECLARE
	c_pi CONSTANT NUMBER(9, 8) := 3.14159265;
	promien PLS_INTEGER := &podaj_promien;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('Pole powierzchni calkowitej: ' || ());
	DBMS_OUTPUT.PUT_LINE('Objętość: ' || ());
	
END;