SET SERVEROUTPUT ON

DECLARE
	v_pensja dane.pensja%TYPE;
	
BEGIN
	-- create table 
	CREATE TABLE dane (
		id NUMBER(2) NOT NULL,
		imie VARCHAR2(50) NOT NULL,
		nazwisko VARCHAR2(50) NOT NULL,
		pensja NUMBER(7, 2) NOT NULL
	);
	-- insert data to table
	
	-- create variable
	
	-- read data from table and set it to variable
	SELECT pensja INTO :v_pensja FROM dane WHERE id=2;
	
	-- print variable
	DBMS_OUTPUT.PUT_LINE(v_pensja);

END;
