--23.2
SELECT K.imie, K.nazwisko
FROM klient AS K
WHERE id_klient NOT IN
	(SELECT id_klient FROM wypozyczenie);

--23.3
SELECT imie, nazwisko
FROM pracownik 
WHERE id_pracownik NOT IN
	(SELECT id_pracownik FROM wypozyczenie);