--18.2
SELECT DISTINCT M.ulica + N' ' + M.numer AS adres, S.marka, S.typ
FROM miejsce AS M
	JOIN wypozyczenie AS W
		ON W.id_miejsca_wyp = M.id_miejsce
	JOIN samochod AS S
		ON S.id_samochod = W.id_samochod
ORDER BY adres, marka, typ;

--18.3
SELECT S.id_samochod, S.marka, S.typ, K.imie, K.nazwisko
FROM samochod AS S
	JOIN wypozyczenie AS W
		ON W.id_samochod = S.id_samochod
	JOIN klient AS K
		ON K.id_klient = W.id_klient
ORDER BY id_samochod, nazwisko, imie;