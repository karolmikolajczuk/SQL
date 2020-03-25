--22.2
SELECT imie, nazwisko, pensja
FROM pracownik
WHERE pensja >
	(SELECT AVG(pensja) FROM pracownik);

--22.3
SELECT marka, typ, data_prod
FROM samochod
WHERE data_prod IN
	(SELECT MAX (data_prod) FROM samochod);
