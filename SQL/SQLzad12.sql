SELECT imie, nazwisko, data_zatr FROM pracownik WHERE MONTH(data_zatr) LIKE '5' ORDER BY nazwisko, imie ASC;
SELECT imie, nazwisko, COALESCE(DATEDIFF(day, data_zatr, GETDATE()), 0) AS zatr FROM pracownik ORDER BY zatr DESC;
SELECT marka, typ, COALESCE(DATEDIFF(year, data_prod, GETDATE()), 0) AS jak_stary FROM samochod ORDER BY jak_stary DESC;