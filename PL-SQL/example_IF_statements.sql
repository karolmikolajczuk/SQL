SET SERVEROUTPUT ON

DECLARE
    v_pensja    NUMBER  :=  11000;
    v_wiek NUMBER := NULL;
    
BEGIN
    -- IF THEN, IF NOT THEN
    IF v_pensja >= 10000 THEN
        DBMS_OUTPUT.PUT_LINE('Moze byc');
    END IF;
-----------------------------------------
    IF NOT v_pensja <= 10000 THEN
        DBMS_OUTPUT.PUT_LINE('Moze byc');
    END IF;
-----------------------------------------------------------------
    -- IF THEN ELSE 
    IF v_pensja >= 10000 THEN
        DBMS_OUTPUT.PUT_LINE(v_pensja);
    ELSE
        DBMS_OUTPUT.PUT_LINE('NIE ok');
    END IF;
-----------------------------------------------------------------
    -- IF THEN ELSIF
    IF v_pensja > 100000 THEN
        DBMS_OUTPUT.PUT_LINE('over 100.000');
    ELSIF v_pensja > 10000 THEN
        DBMS_OUTPUT.PUT_LINE('over 100.000');
    ELSE
        DBMS_OUTPUT.PUT_LINE('over 100.000');
    END IF;
-----------------------------------------------------------------    
    -- NULL in IF
    -- cause v_wiek is NULL, ELSE will work, not IF.
    IF v_wiek >= 18 THEN
        DBMS_OUTPUT.PUT_LINE('u are 18 or over');
    ELSE
        DBMS_OUTPUT.PUT_LINE('too young');
    END IF;
    
END;