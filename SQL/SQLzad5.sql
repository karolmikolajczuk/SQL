SELECT imie, nazwisko, dzial, stanowisko FROM pracownik WHERE dzial='obs³uga klienta' AND stanowisko='sprzedawca';
SELECT imie, nazwisko, dzial, stanowisko FROM pracownik WHERE dzial='obs³uga klienta' AND stanowisko='sprzedawca' OR stanowisko='kierownik';
SELECT * FROM samochod WHERE NOT(marka='fiat') AND NOT(marka='ford');