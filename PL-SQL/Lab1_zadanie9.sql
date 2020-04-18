SET SERVEROUTPUT ON

DECLARE
	v_a NUMBER(1) := 8;
	v_b NUMBER(1) := 4;
	v_c NUMBER(3, 2) := NULL;
	
BEGIN
	v_c := DBMS.SQRT((v_a*v_a) + (v_b*v_b));
	DBMS_OUTPUT.PUT_LINE(v_c);
	
END;