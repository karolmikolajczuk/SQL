SELECT * FROM samochod WHERE marka IN('mercedes', 'seat', 'opel');
SELECT imie, nazwisko, data_zatr FROM pracownik WHERE imie IN('Anna', 'Marzena', 'Alicja');
SELECT imie, nazwisko, miasto FROM klient WHERE miasto NOT IN('Warszawa', 'Wroc³aw');