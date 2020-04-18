SET SERVEROUTPUT ON

DECLARE 
    v_data      DATE                    := SYSDATE + 30;
    v_napis     VARCHAR2(6) NOT NULL    := 'Oracle'; 
    v_liczba    PLS_INTEGER;
    v_logika    BOOLEAN NOT NULL        := FALSE;
    c_stala     CONSTANT NUMBER(4, 1)   := 0;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE(v_data);
    NULL;
END;