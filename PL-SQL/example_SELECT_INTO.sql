SET SERVEROUTPUT ON

DECLARE 
    zmienna1 NUMBER(2);
    zmienna2 NUMBER(4,2) := 2.1;
    zmienna3 VARCHAR2(20) := 'Oracle';
    
    v_imie VARCHAR2(20);
    
BEGIN
    -- create klient table
    SELECT imie INTO v_imie FROM klient WHERE id = 2;
    
    DBMS_OUTPUT.PUT_LINE(v_imie);
END;