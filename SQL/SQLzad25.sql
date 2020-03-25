--25.2
UPDATE P
SET P.dodatek += 10
FROM pracownik AS P
	JOIN wypozyczenie AS W
		ON P.id_pracownik = W.id_pracow_wyp
WHERE MONTH(data_wyp) = 5;

--25.3
UPDATE P
SET P.pensja *= 0.95
FROM pracownik AS P
	JOIN wypozyczenie AS W
		ON P.id_pracownik = W.id_pracow_wyp
WHERE data_wyp NOT BETWEEN '19990101' AND '19991231';