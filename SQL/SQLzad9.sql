SELECT * FROM pracownik WHERE dodatek IS NULL;
SELECT * FROM klient WHERE nr_karty_kredyt IS NOT NULL;
SELECT imie, nazwisko, ISNULL(dodatek, 0) FROM pracownik; -- or COALESCE(dodatek, 0)