SET SERVEROUTPUT ON

DECLARE
    v_record     klient%ROWTYPE;

BEGIN
    
    SELECT *
    INTO v_record
    FROM klient
    WHERE id = 1;
    
    v_record.imie := 'Bonifacy';
    
    -- INSERT NEW RECORD
    INSERT INTO nowy_klient
    --VALUES (v_record.id, v_record.imie, v_record.nazwisko);
    VALUES(v_record);
    
    -- MODIFICATION
    UPDATE klient SET ROW = v_record WHERE id=1;
    
END;