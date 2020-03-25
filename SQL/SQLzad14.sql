UPDATE pracownik SET dodatek = 50 WHERE dodatek = NULL;
UPDATE klient SET imie = 'Jerzy', nazwisko = 'Nowak' WHERE id_klient = 10;
UPDATE pracownik SET dodatek = dodatek + 100 WHERE pensja < 1500;