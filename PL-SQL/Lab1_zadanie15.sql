SET SERVEROUTPUT ON

DECLARE
	SUBTYPE IMIE IS VARCHAR2(1);
	SUBTYPE NAZWISKO IS VARCHAR2(1);

	v_imie		IMIE;
	v_nazwisko	NAZWISKO;
	v_id 		pracownicy.id%TYPE := 2;
	
BEGIN
	SELECT LEFT(imie, 1), LEFT(nazwisko, 1) 
		INTO v_imie, v_nazwisko 
		FROM pracownicy 
		WHERE id=v_id;
	
	DBMS_OUTPUT.PUT_LINE(v_imie || '.' || v_nazwisko || '.');

END;
