SET SERVEROUTPUT ON

DECLARE
	v_rekord pracownik%ROWTYPE;
	
BEGIN
	SELECT * INTO v_rekord FROM pracownik WHERE id_pracownik=2;
	DBMS_OUTPUT.PUT_LINE(v_rekord.id_pracownik || ' ' || v_rekord.imie || ' ' || v_rekord.nazwisko);
	
	v_rekord.id_pracownik=10;
	DBMS_OUTPUT.PUT_LINE(v_rekord.id_pracownik || ' ' || v_rekord.imie || ' ' || v_rekord.nazwisko);
	
	INSERT INTO pracownik VALUES(
		v_rekord.id_pracownik, v_rekord.imie, v_rekord.nazwisko
	);

END;