SELECT imie, nazwisko, pensja, ISNULL(dodatek, 0) AS dodatek, pensja+ISNULL(dodatek, 0) AS do_zaplaty FROM pracownik;
SELECT imie, nazwisko, pensja, ISNULL(dodatek, 0) AS dodatek, COALESCE(pensja + ISNULL(dodatek, 0), 0) AS do_zaplaty FROM pracownik;

SELECT imie, nazwisko, COALESCE(pensja*3/2, 0) AS nowa_pensja FROM pracownik;
SELECT imie, nazwisko, COALESCE((pensja + ISNULL(dodatek, 0)) * 0.01, 0) AS jeden_procent FROM pracownik ORDER BY jeden_procent ASC; 