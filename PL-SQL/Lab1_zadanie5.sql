SET SERVEROUTPUT ON
ACCEPT podaj_imie PROMPT 'Podaj imie: ';
ACCEPT podaj_nazwisko PROMPT 'Podaj nazwisko: ';

DECLARE
	v_imie 		pracownik.imie%TYPE 	:= &podaj_imie;
	v_nazwisko 	pracownik.nazwisko%TYPE := &podaj_nazwisko;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE(v_imie || ' ' || v_nazwisko);
END;