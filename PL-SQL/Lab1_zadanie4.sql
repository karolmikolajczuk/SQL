SET SERVEROUTPUT ON

DECLARE
	v_ilosc NUMBER(3) := NULL;

BEGIN
	CREATE TABLE pracownik(
		id_pracownik 	NUMBER(2) 		NOT NULL,
		imie			VARCHAR2(50)	NOT NULL,
		nazwisko		VARCHAR2(50)	NOT NULL
	);

	INSERT INTO pracownik(
		id_pracownik, imie, nazwisko
	) VALUES (
		1, 'Jan', 'Kowalski'
	);

	INSERT INTO pracownik(
		id_pracownik, imie, nazwisko
	) VALUES (
		2, 'Jerzy', 'Nowak'
	);

	INSERT INTO pracownik(
		id_pracownik, imie, nazwisko
	) VALUES (
		3, 'Anna', 'Gałka'
	);

	INSERT INTO pracownik(
		id_pracownik, imie, nazwisko
	) VALUES (
		4, 'Hanna', 'Miałka'
	);

	SELECT COUNT(id_pracownik) INTO:v_ilosc FROM pracownik;

	DBMS_OUTPUT.PUT_LINE('W tabeli pracownik jest ' || v_ilosc || ' rekordow.');
END;