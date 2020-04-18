SET SERVEROUTPUT ON

BEGIN

	-- create table and fill with data
	BEGIN
		-- create table
		CREATE TABLE osoby(
			id NUMBER(3) NOT NULL,
			imie VARCHAR2(50) NOT NULL,
			nazwisko VARCHAR2(50) NOT NULL,
			data_ur DATE NOT NULL
		);
		
		-- insert data to table
		INSERT INTO osoby VALUES(
			1, 'Jan', 'Lis', '2020-01-01'
		);
		INSERT INTO osoby VALUES(
			2, 'John', 'Lisowski', '2021-01-01'
		);
		INSERT INTO osoby VALUES(
			3, 'Jacek', 'Kowalski', '2022-01-01'
		);
		INSERT INTO osoby VALUES(
			4, 'Janusz', 'Fidytek', '2023-01-01'
		);
		INSERT INTO osoby VALUES(
			5, 'Jack', 'Bancila', '2024-01-01'
		);
	END;
	/

	DECLARE 
		v_imie VARCHAR2(50) := 'Jan';
		v_nazwisko VARCHAR2(50) := 'Lis';
		v_rekord osoby%ROWTYPE;

	BEGIN	
		-- get row where data is the same with the input
		SELECT * INTO :v_rekord FROM osoby WHERE imie=v_imie AND nazwisko=v_nazwisko;

		-- print whole record
		DBMS_OUTPUT.PUT_LINE(v_rekord.id || ' ' || v_rekord.imie || ' ' || v_rekord.nazwisko || ' ' || v_rekord.data_ur);

	END;
	/
	
END;