SELECT imie, nazwisko, CONCAT(LEFT(imie, 1), '.',LEFT(nazwisko, 1),'.') AS inicjaly FROM klient ORDER BY inicjaly, nazwisko, imie ASC;
SELECT CONCAT(UPPER(LEFT(imie, 1)), LOWER(RIGHT(imie, LEN(imie)-1))) AS imie, CONCAT(UPPER(LEFT(nazwisko, 1)), LOWER(RIGHT(nazwisko, LEN(nazwisko)-1))) AS nazwisko FROM klient;
SELECT imie, nazwisko, CONCAT(LEFT(nr_karty_kredyt, LEN(nr_karty_kredyt)-6), STUFF(nr_karty_kredyt, 14, 6, 'XXXXXX')) AS nr_karty_kredyt FROM klient;