--21.2
SELECT S.id_samochod, S.marka, S.typ, COUNT(W.id_wypozyczenie) AS iloscWypozyczen
FROM samochod AS S
	JOIN wypozyczenie AS W
		ON W.id_samochod = S.id_samochod
GROUP BY S.id_samochod, S.marka, S.typ
HAVING COUNT(W.id_wypozyczenie) >= 5 
ORDER BY S.marka, S.typ;

--21.3
SELECT P.imie, P.nazwisko, COUNT(W.id_wypozyczenie) AS iloscWypozyczen
FROM pracownik AS P
	LEFT JOIN wypozyczenie AS W
		ON W.id_pracow_wyp = P.id_pracownik
GROUP BY P.imie, P.nazwisko
HAVING COUNT(W.id_wypozyczenie) <= 20
ORDER BY COUNT(W.id_wypozyczenie), P.nazwisko, P.imie;