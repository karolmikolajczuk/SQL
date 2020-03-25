SELECT TOP 1 imie, nazwisko FROM pracownik ORDER BY data_zatr ASC;
SELECT TOP 4 imie, nazwisko FROM pracownik ORDER BY nazwisko, imie;
SELECT TOP 4 WITH TIES imie, nazwisko FROM pracownik ORDER BY nazwisko, imie;
SELECT TOP 1 * FROM wypozyczenie ORDER BY data_wyp ASC;