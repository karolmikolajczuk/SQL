SET SERVEROUTPUT ON

BEGIN

	BEGIN
		CREATE TABLE wydzial (
			id				PLS_INTEGER 	NOT NULL,
			imie			VARCHAR2(20),
			nazwisko		VARCHAR2(20),
			nazwa_wydzialu	VARCHAR2(20),
			data_zatr		DATE			NOT NULL,
			data_konc		DATE
		);
		
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
		INSERT INTO wydzial VALUES(
			1, 'Jan', 'Kowalski', 'Kasa', '2010-01-01', NULL
		);
	END;
	/
	
	DECLARE
		v_wydzial wydzial.nazwa%TYPE := 'Kasa';
		v_osoba wydzial%ROWTYPE;
		
	BEGIN
		SELECT TOP 1 * INTO v_osoba FROM wydzial WHERE INTERVAL(data_konc, data_zatr) AS lata_pracy ORDER BY lata_pracy ASC;
	END;
	/
	
	DBMS_OUTPUT.PUT_LINE(v_osoba.imie || ' ' || v_osoba.nazwisko);
	
END;