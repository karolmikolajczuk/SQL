SET SERVEROUTPUT ON

DECLARE 
    SUBTYPE s_string    IS VARCHAR2(4000 BYTE);
    SUBTYPE s_przedzial IS PLS_INTEGER RANGE 1000..9000 NOT NULL;
    
    v_napis     s_string;
    v_liczba    s_przedzial := 1000;
    
BEGIN
    v_napis     :=  'Zaawansowane Systemy Baz danych';
    v_liczba    :=  1234;
    
    DBMS_OUTPUT.PUT_LINE(v_napis || ' ' || v_liczba);
END;