SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE '%k%';
SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE 'D%ski';
SELECT imie, nazwisko FROM klient WHERE nazwisko LIKE '_O%' OR nazwisko LIKE '_A%';