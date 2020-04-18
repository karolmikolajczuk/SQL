SET SERVEROUTPUT ON

DECLARE
    v_ocena         NUMBER(2, 1)        := 4.5;
    v_ocena_word    VARCHAR2(20);
    
BEGIN
    CASE v_ocena
        WHEN 5.0 THEN v_ocena_word := 'bardzo dobry';
        WHEN 4.5 THEN v_ocena_word := 'dobry plus';
        WHEN 4.0 THEN v_ocena_word := 'dobry';
        WHEN 3.5 THEN v_ocena_word := 'dostateczny plus';
        WHEN 3.0 THEN v_ocena_word := 'dostateczny';
        WHEN 2.0 THEN v_ocena_word := 'niedostateczny';
        ELSE v_ocena_word := 'ni mo';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(v_ocena_word);
    
    CASE
        WHEN v_ocena = 5.0 THEN v_ocena_word := 'bardzo dobry';
        WHEN v_ocena = 4.5 THEN v_ocena_word := 'dobry plus';
        WHEN v_ocena = 4.0 THEN v_ocena_word := 'dobry';
        WHEN v_ocena = 3.5 THEN v_ocena_word := 'dostateczny plus';
        WHEN v_ocena = 3.0 THEN v_ocena_word := 'dostateczny';
        WHEN v_ocena = 2.0 THEN v_ocena_word := 'niedostateczny';
        ELSE v_ocena_word := 'ni mo';
    END CASE;
    DBMS_OUTPUT.PUT_LINE(v_ocena_word);
END;