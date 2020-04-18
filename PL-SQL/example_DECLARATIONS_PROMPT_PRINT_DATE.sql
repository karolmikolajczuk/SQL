SET SERVEROUTPUT ON
ACCEPT podaj_liczbe PROMPT 'Podaj wartosc liczby: ';

DECLARE 
    v_data_urodzenia DATE;
    v_rabat NUMBER(2) NOT NULL := 25;
    v_nazwa VARCHAR2(10) DEFAULT 'D-Link';
    c_numer CONSTANT NUMBER(3) := 123;
    v_z_klawiatury NUMBER(2) := &podaj_liczbe;
    
BEGIN
    -- possible date '2011/08/22' or '2011-08-22'
    DBMS_OUTPUT.PUT_LINE('Kwadrat liczby ' || v_z_klawiatury || ' wynosi ' ||
        (v_z_klawiatury * v_z_klawiatury));
    NULL;
END;