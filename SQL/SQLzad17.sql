--17.1
SELECT S.id_samochod, S.marka, S.typ, W.data_wyp, W.data_odd
FROM samochod AS S
	JOIN wypozyczenie AS W
		ON S.id_samochod = W.id_samochod
WHERE data_odd IS NULL;

--17.2
SELECT K.imie, K.nazwisko, W.id_samochod, W.data_wyp
FROM klient AS K
	JOIN wypozyczenie AS W
		ON K.id_klient = W.id_klient
WHERE data_odd IS NULL;

--17.3
SELECT K.imie, K.nazwisko, W.data_wyp, W.kaucja
FROM klient AS K
	JOIN wypozyczenie AS W
		ON W.id_klient = K.id_klient
WHERE kaucja IS NOT NULL;