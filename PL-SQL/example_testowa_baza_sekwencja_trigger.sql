CREATE TABLE klient(
    id          INTEGER         NOT NULL    PRIMARY KEY,
    imie        VARCHAR2(20)    NOT NULL    CHECK(LENGTH(imie) > 2),
    nazwisko    VARCHAR2(30)    NOT NULL    CHECK(LENGTH(nazwisko) > 2),
    pesel       NUMBER(11, 0)   NOT NULL    UNIQUE CHECK(pesel > 9999999999),
    rabat       INT                         DEFAULT 0
);
/

CREATE SEQUENCE sek_klient
    START WITH 1 INCREMENT BY 1 NOMAXVALUE;
/

CREATE TRIGGER insert_klient BEFORE INSERT ON klient
    FOR EACH ROW
BEGIN
    SELECT sek_klient.nextval INTO :new.id FROM dual;
END;
/

INSERT INTO klient (imie, nazwisko, pesel, rabat)
VALUES ('Jan', 'Kowalski', 12345678901, 25);
/

INSERT INTO klient (imie, nazwisko, pesel, rabat)
VALUES ('Jerzy', 'Nowak', 12345678902, 24);
/

DECLARE
    v_rekord klient%ROWTYPE;

BEGIN
    FOR v_index IN 1..1000000 LOOP
        v_rekord.imie := 'imie'||v_index;
        v_rekord.nazwisko := 'nazwisko'||v_index;
        v_rekord.pesel := 1000000000+v_index;
        v_rekord.rabat := MOD(17*v_index, 21);
        
        INSERT INTO klient VALUES v_rekord;
    END LOOP;
END;