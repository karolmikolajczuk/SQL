SET SERVEROUTPUT ON

-- jawna deklaracja
DECLARE
    TYPE info_t IS RECORD (
        v_numer     NUMBER(2),
        v_pensja    NUMBER(6, 2) := 5000,
        v_data_ur   klient.data_ur%TYPE,
        v_product   produkt%ROWTYPE    
    );
    
    v_moj_rekord info_t;
    
BEGIN
    NULL;
END;