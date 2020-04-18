SET SERVEROUTPUT ON

DECLARE
	v_liczba1 NUMBER(2) := 10;
	v_liczba2 NUMBER(2) := 11;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('Liczba1=' || v_liczba1 || ' Liczba2=' || v_liczba2);
	DBMS_OUTPUT.PUT_LINE(v_liczba1 + v_liczba2);
	DBMS_OUTPUT.PUT_LINE(v_liczba1 - v_liczba2);
	DBMS_OUTPUT.PUT_LINE(v_liczba1 / v_liczba2);
	DBMS_OUTPUT.PUT_LINE(v_liczba1 * v_liczba2);
END;