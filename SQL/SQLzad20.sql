--20.2
SELECT S.id_samochod, S.marka, S.typ, COUNT(W.id_wypozyczenie) AS iloscWypozyczen
FROM samochod AS S
	LEFT OUTER JOIN wypozyczenie AS W
		ON W.id_samochod = S.id_samochod
GROUP BY S.id_samochod, S.marka, S.typ
ORDER BY COUNT(id_wypozyczenie);

--20.3
SELECT P.imie, P.nazwisko, COUNT(W.id_wypozyczenie) AS iloscWypozyczenPracownika
FROM pracownik AS P
	JOIN wypozyczenie AS W
		ON W.id_pracow_wyp = P.id_pracownik
GROUP BY P.imie, P.nazwisko;

