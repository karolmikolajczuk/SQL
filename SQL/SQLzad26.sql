--26.2
DELETE S
FROM samochod AS S
	JOIN wypozyczenie AS W
		ON W.id_samochod = S.id_samochod
WHERE W.data_wyp IS NULL;

--26.3
DELETE P
FROM pracownik AS P
	JOIN wypozyczenie AS W
		ON W.id_pracow_wyp = P.id_pracownik
WHERE W.data_wyp IS NULL;