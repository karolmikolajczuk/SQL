SET SERVEROUTPUT ON

BEGIN

	BEGIN
	
		CREATE TABLE pracownicy (
			id			NUMBER(3) 		NOT NULL,
			imie		VARCHAR2(50) 	NOT NULL,
			nazwisko	VARCHAR2(50) 	NOT NULL,
			plec		CHAR(1)			NOT NULL,
			pensja		NUMBER(7, 2) 	NOT NULL,
			data_zatr	DATE 			NOT NULL,
			data_ukon	DATE
		);
	
		INSERT INTO pracownicy VALUES (
		
		);
	
	END;
	/
	
	DECLARE
		v_rekord pracownicy%ROWTYPE;
		v_plec CHAR(1) := 'M';
		
	BEGIN
		SELECT TOP 1 * INTO :v_rekord FROM dane WHERE plec=v_plec AND data_ukon=NULL ORDER BY pensja ASC;
		DBMS_OUTPUT.PUT_LINE(v_rekord.imie || ' ' || v_rekord.nazwisko || ' ' || v_rekord.pensja);
		
	END;
	/
END;