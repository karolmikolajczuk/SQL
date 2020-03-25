--27.2
SELECT imie, nazwisko
FROM klient

INTERSECT

SELECT imie, nazwisko
FROM pracownik;

--27.3
SELECT imie, nazwisko
FROM klient

EXCEPT

SELECT imie, nazwisko
FROM pracownik;