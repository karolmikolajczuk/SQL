SELECT imie, nazwisko FROM pracownik WHERE imie='Jan';
SELECT imie, nazwisko FROM pracownik WHERE stanowisko='sprzedawca';
SELECT imie, nazwisko, pensja FROM pracownik WHERE pensja > 1500 ORDER BY pensja DESC;