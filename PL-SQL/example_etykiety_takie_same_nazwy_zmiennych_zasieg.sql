SET SERVEROUTPUT ON

<<FIRST_LAY>>
DECLARE
    v_nazwa     VARCHAR2(20);

BEGIN
    DECLARE
        v_nazwa NUMBER(2);
    
    BEGIN
        v_nazwa := 12;
        FIRST_LAY.v_nazwa   :=  'blok wewnetrzny';
    
    END;
    
    DBMS_OUTPUT.PUT_LINE(FIRST_LAY.v_nazwa);

END;