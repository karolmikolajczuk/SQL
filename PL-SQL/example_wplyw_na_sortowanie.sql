SET SERVEROUTPUT ON

SELECT * 
FROM klient 
ORDER BY 
    CASE WHEN nazwisko = 'Kos' THEN 'Aaaa'
         ELSE nazwisko
    END;

UPDATE pracownik
SET pensja = CASE
    WHEN pensja     <=  1000                    THEN (pensja*1.3)
    WHEN pensja     >   1000 AND pensja <= 2500 THEN (pensja*1.2)
    WHEN pensja     >   2500 AND pensja <= 4500 THEN (pensja*1.1)
    ELSE (pensja*1.01)
END;