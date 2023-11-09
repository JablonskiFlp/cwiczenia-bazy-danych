--CREATE DATABASE firma_2;            

--USE firma_2;                        

--CREATE SCHEMA rozliczenia;

-- CREATE TABLE rozliczenia.pracownicy 
-- (     
--     id_pracownika INT PRIMARY KEY,
--     imie VARCHAR(20) NOT NULL,
--     nazwisko VARCHAR(20) NOT NULL,
--     adres VARCHAR(50) NOT NULL,
--     telefon VARCHAR(15)
-- );

-- CREATE TABLE rozliczenia.godziny 
-- (
--     id_godziny INT PRIMARY KEY,
--     data DATE NOT NULL,
--     liczba_godzin DECIMAL(9, 2) NOT NULL,
--     id_pracownika INT NOT NULL
-- );

-- CREATE TABLE rozliczenia.pensje 
-- (
--     id_pensji INT PRIMARY KEY,
--     stanowisko VARCHAR(20) NOT NULL,
--     kwota money NOT NULL,
--     id_premii INT
-- );

-- CREATE TABLE rozliczenia.premie 
-- (
--     id_premii INT PRIMARY KEY,
--     rodzaj VARCHAR(50) NOT NULL,
--     kwota money NOT NULL
-- );

-- ALTER TABLE rozliczenia.godziny
-- ADD CONSTRAINT fk_pracownik
-- FOREIGN KEY (id_pracownika)
-- REFERENCES rozliczenia.pracownicy(id_pracownika);              

-- ALTER TABLE rozliczenia.pensje
-- ADD CONSTRAINT fk_premia
-- FOREIGN KEY (id_premii)
-- REFERENCES rozliczenia.premie(id_premii);

-- INSERT INTO rozliczenia.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
-- VALUES
-- (1, 'Tony', 'Stark', 'New York', '555-1234'),
-- (2, 'Steve', 'Rogers', 'New York', '555-5678'),
-- (3, 'Natasha', 'Romanoff', 'Unknown', '555-9876'),
-- (4, 'Thor', 'Odinson', 'Asgard', '555-4321'),
-- (5, 'Bruce', 'Banner', 'Gamma', '555-8765'),
-- (6, 'Wanda', 'Maximoff', 'Sokovia', '555-2345'),
-- (7, 'Peter', 'Parker', 'Queens', '555-6789'),
-- (8, 'Scott', 'Lang', 'San Francisco', '555-3456'),
-- (9, 'TChalla', 'Wakanda', 'Wakanda', '555-7890'),
-- (10, 'Carol', 'Danvers', 'Outer Space', '555-6543');

 
-- INSERT INTO rozliczenia.godziny (id_godziny, data, liczba_godzin, id_pracownika)
-- VALUES
-- (1, '2023-11-09', 8, 1),
-- (2, '2023-11-10', 7, 2),
-- (3, '2023-11-11', 6, 3),
-- (4, '2023-11-12', 8, 4),
-- (5, '2023-11-13', 5, 5),
-- (6, '2023-11-14', 7, 6),
-- (7, '2023-11-15', 8, 7),
-- (8, '2023-11-16', 6, 8),
-- (9, '2023-11-17', 7, 9),
-- (10, '2023-11-18', 8, 10);
 

-- INSERT INTO rozliczenia.premie (id_premii, rodzaj, kwota)
-- VALUES
-- (1, 'Tech Genius Bonus', 2000),
-- (2, 'Super Soldier Bonus', 1500),
-- (3, 'Spy Bonus', 1800),
-- (4, 'Godly Bonus', 2500),
-- (5, 'Gamma Bonus', 2000),
-- (6, 'Magic Bonus', 2200),
-- (7, 'Web-Slinging Bonus', 1200),
-- (8, 'Stealth Bonus', 1300),
-- (9, 'Wakandan Bonus', 2000),
-- (10, 'Cosmic Bonus', 2500);

-- INSERT INTO rozliczenia.pensje (id_pensji, stanowisko, kwota, id_premii)
-- VALUES
-- (1, 'Genius', 10000, 1),
-- (2, 'Super Soldier', 8000, 2),
-- (3, 'Spy', 9000, 3),
-- (4, 'God of Thunder', 12000, 4),
-- (5, 'Gamma Scientist', 9500, 5),
-- (6, 'Scarlet Witch', 10000, 6),
-- (7, 'Spider-Man', 7000, 7),
-- (8, 'Master Thief', 7500, 8),
-- (9, 'King of Wakanda', 11000, 9),
-- (10, 'Captain Marvel', 11000, 10);
 
SELECT nazwisko, adres
FROM rozliczenia.pracownicy;

SELECT 
    DATEPART(dw, data) AS dzien_tygodnia,
	DATEPART(m, data) AS miesiac
FROM rozliczenia.godziny;



ALTER TABLE rozliczenia.pensje
RENAME COLUMN kwota TO kwota_brutto;

ALTER TABLE rozliczenia.pensje
ADD kwota_netto DECIMAL(10, 2);

UPDATE rozliczenia.pensje
SET kwota_netto = kwota_brutto / 1.23;

SELECT * FROM rozliczenia.pensje;