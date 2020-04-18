VARIABLE v_imie VARCHAR2(15);
/

SET AUTOPRINT ON

SET SERVEROUTPUT ON

DECLARE 
    variable_m VARCHAR2(3) := 'HEY';
BEGIN
    DBMS_OUTPUT.PUT_LINE(variable_m);
    :v_imie := 'IMIE';
END;
/

PRINT v_imie;
/
