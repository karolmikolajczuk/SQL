SET SERVEROUTPUT ON
ACCEPT podaj_a PROMPT 'Podaj a:';
ACCEPT podaj_b PROMPT 'Podaj b:';

DECLARE
	v_a NUMBER(3) := &podaj_a;
	v_b NUMBER(3) := &podaj_b;

BEGIN
	DBMS_OUTPUT.PUT_LINE(POWER(v_a+v_b, 2));
	
END;