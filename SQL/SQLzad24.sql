--24.2
SELECT TOP(1) WITH TIES K.id_klient, K.imie, K.nazwisko
FROM klient AS K
	JOIN wypozyczenie AS W
		ON W.id_klient = K.id_klient
GROUP BY K.id_klient, K.imie, K.nazwisko
ORDER BY COUNT(W.id_wypozyczenie) ASC, nazwisko, imie

--24.3
SELECT TOP(1) WITH TIES P.id_pracownik, P.nazwisko, P.imie
FROM pracownik AS P
	JOIN wypozyczenie AS W
		ON W.id_pracow_wyp = P.id_pracownik
GROUP BY P.id_pracownik, P.nazwisko, P.imie
ORDER BY COUNT(W.id_wypozyczenie), nazwisko, imie;