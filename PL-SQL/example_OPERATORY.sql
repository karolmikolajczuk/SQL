SET SERVEROUTPUT ON

DECLARE
    TYPE lista_nr  IS TABLE OF INTEGER;
    TYPE lista_str IS TABLE OF VARCHAR2(5);
    
    v_imiona VARCHAR2(2);
    z lista_nr := lista_nr();
    v_imie VARCHAR2(10) := 'Jan';
    x lista_str := lista_str('one', 'two');
    
    set1 lista_nr := lista_nr(1, 2, 3);
    set2 lista_nr := lista_nr(1, 2, 3, 4, 5);
    
BEGIN
    -- OPERATOR AND
    IF 1=1 AND 'jeden'='jeden' THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;

    -- OPERATOR BETWEEN
    IF 10 BETWEEN 1 AND 20 THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;

    -- OPERATOR IN
    IF 10 IN(1, 10, 100, 200) THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;
        
    -- OPERATOR IS A SET
    IF z IS A SET THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;

    -- OPERATOR IS EMPTY
    IF z IS EMPTY THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;

    -- OPERATOR IS NULL
    IF v_imiona IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE');
    END IF;

    -- OPERATOR LIKE
    IF v_imie LIKE 'J_n' THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;
    IF v_imie LIKE 'J%' THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;
    
    -- OPERATOR MEMBER OF
    IF 'two' MEMBER OF x THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;    

    -- OPERATOR NOT
    IF NOT 1=2 THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;
    
    -- OPERATOR OR
    IF 1=2 OR 1=1 THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;

    -- OPERATOR SUBMULTISET
    IF set1 SUBMULTISET set2 THEN
        DBMS_OUTPUT.PUT_LINE('TRUE');
    END IF;

    
END;