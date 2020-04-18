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
    v_moj_rekord.v_pensja   :=  v_moj_rekord.v_pensja + 200;
    v_moj_rekord.v_data_ur  :=  SYSDATE-10000;
    v_moj_rekord.v_numer    :=  1;
    
    SELECT * 
    INTO v_moj_rekord.v_product 
    FROM produkt 
    WHERE id = 1;
    
    dbms_output.put_line(
        ' Pensja: '             || v_moj_rekord.v_pensja                ||
        ' Data urodzenia: '     || TO_CHAR(v_moj_rekord.v_data_ur)      ||
        ' Ulubiony produkt: '   || v_moj_rekord.v_ulubiony_produkt.nazwa);
END;