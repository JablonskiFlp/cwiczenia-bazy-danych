--CREATE DATABASE Firma;            

--USE Firma;                        

--CREATE SCHEMA rozliczenia;


-- CREATE TABLE ksiegowosc.pracownicy 
-- (     
--     id_pracownika INT PRIMARY KEY,
--     imie VARCHAR(20) NOT NULL,
--     nazwisko VARCHAR(20) NOT NULL,
--     adres VARCHAR(50) NOT NULL,
--     telefon VARCHAR(15)
-- );

-- CREATE TABLE ksiegowosc.godziny 
-- (
--     id_godziny INT PRIMARY KEY,
--     data DATE NOT NULL,
--     liczba_godzin DECIMAL(9, 2) NOT NULL,
--     id_pracownika INT NOT NULL
-- );

-- CREATE TABLE ksiegowosc.pensje 
-- (
--     id_pensji INT PRIMARY KEY,
--     stanowisko VARCHAR(20) NOT NULL,
--     kwota money NOT NULL
-- );

-- CREATE TABLE ksiegowosc.premie 
-- (
--     id_premii INT PRIMARY KEY,
--     rodzaj VARCHAR(50) NOT NULL,
--     kwota money NOT NULL
-- );

-- CREATE TABLE ksiegowosc.wynagrodzenie 
-- ( 	
-- 	id_wynagrodzenia INT PRIMARY KEY, 
--  	data DATE NOT NULL, 
--  	id_pracownika INT NOT NULL, 
--  	id_godziny INT NOT NULL, 
--  	id_pensji INT NOT NULL, 
-- 	id_premii INT NOT NULL
-- )


-- ALTER TABLE ksiegowosc.godziny
-- ADD CONSTRAINT fk_pracownik
-- FOREIGN KEY (id_pracownika)
-- REFERENCES ksiegowosc.pracownicy(id_pracownika);
	
-- ALTER TABLE ksiegowosc.wynagrodzenie
-- ADD CONSTRAINT fk_pracownik
-- FOREIGN KEY (id_pracownika)
-- REFERENCES ksiegowosc.pracownicy(id_pracownika);
	
-- ALTER TABLE ksiegowosc.wynagrodzenie
-- ADD CONSTRAINT fk_godzina
-- FOREIGN KEY (id_godziny)
-- REFERENCES ksiegowosc.godziny(id_godziny);

-- ALTER TABLE ksiegowosc.wynagrodzenie
-- ADD CONSTRAINT fk_pensja
-- FOREIGN KEY (id_pensji)
-- REFERENCES ksiegowosc.pensje(id_pensji);

-- ALTER TABLE ksiegowosc.wynagrodzenie
-- ADD CONSTRAINT fk_premia
-- FOREIGN KEY (id_premii)
-- REFERENCES ksiegowosc.premie(id_premii);

-- INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
-- VALUES
-- (1, 'Tony', 'Stark', 'New York', '555-1234'),
-- (2, 'Steve', 'Rogers', 'New York', '555-5678'),
-- (3, 'Natasha', 'Romanoff', 'Unknown', '555-9876'),
-- (4, 'Thor', 'Odinson', 'Asgard', '555-4321'),
-- (5, 'Bruce', 'Banner', 'Gamma', '555-8765'),
-- (6, 'Wanda', 'Maximoffa', 'Sokovia', '555-2345'),
-- (7, 'Peter', 'Parker', 'Queens', '555-6789'),
-- (8, 'Scott', 'Lang', 'San Francisco', '555-3456'),
-- (9, 'JChalla', 'Wakanda', 'Wakanda', '555-7890'),
-- (10, 'Carol', 'Danvers', 'Outer Space', '555-6543');

 
-- INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika)
-- VALUES
-- (1, '2023-11-09', 170, 1),
-- (2, '2023-11-10', 32, 2),
-- (3, '2023-11-11', 6, 3),
-- (4, '2023-11-12', 8, 4),
-- (5, '2023-11-13', 180, 5),
-- (6, '2023-11-14',17, 6),
-- (7, '2023-11-15', 88, 7),
-- (8, '2023-11-16', 21, 8),
-- (9, '2023-11-17', 250, 9),
-- (10, '2023-11-18', 8, 10);
 

-- INSERT INTO ksiegowosc.premie (id_premii, rodzaj, kwota)
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

-- INSERT INTO ksiegowosc.pensje (id_pensji, stanowisko, kwota)
-- VALUES
-- (1, 'KKK', 10000),
-- (2, 'MMM', 8000),
-- (3, 'AAA', 9000),
-- (4, 'AAA', 12000),
-- (5, 'KKK', 9500),
-- (6, 'WWW', 10000),
-- (7, 'SSS', 500),
-- (8, 'MMM', 2000),
-- (9, 'AAA', 1),
-- (10, 'KKK', 250);
-- -- DELETE FROM ksiegowosc.wynagrodzenie;

-- -- DELETE FROM ksiegowosc.godziny;
-- -- DELETE FROM ksiegowosc.pracownicy;

-- -- DELETE FROM ksiegowosc.pensje;
-- -- DELETE FROM ksiegowosc.premie;

-- INSERT INTO ksiegowosc.wynagrodzenie(id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
-- VALUES
-- (1, '2023-12-09', 1, 1, 1,1),
-- (2, '2023-12-09',2,2,2,2),
-- (3, '2023-12-09',3,3,3,3),
-- (4, '2023-12-09',4,4,4,4),
-- (5, '2023-12-09',5,5,5,5),
-- (6, '2023-12-09',6,6,6,6),
-- (7, '2023-12-09',7,7,7,7),
-- (8, '2023-12-09',8,8,8,8),
-- (9, '2023-12-09',9,9,9,9),
-- (10, '2023-12-09',10,10,10,10);

-- ALTER TABLE ksiegowosc.wynagrodzenie
-- ALTER COLUMN id_premii DROP NOT NULL;

-- UPDATE ksiegowosc.wynagrodzenie
-- SET id_premii = NULL
-- WHERE id_pracownika = 5;

--a.
-- SELECT id_pracownika, nazwisko FROM ksiegowosc.pracownicy; -- dziala

-- b.
-- SELECT w.id_pracownika
-- FROM ksiegowosc.wynagrodzenie w 
-- JOIN ksiegowosc.pensje p ON p.id_pensji = w.id_pensji
-- WHERE p.kwota > '1000'; -- dziala

--c.
-- SELECT w.id_pracownika
-- FROM ksiegowosc.wynagrodzenie w
-- JOIN ksiegowosc.pensje p ON p.id_pensji = w.id_pensji
-- WHERE p.kwota > '2000' AND w.id_premii IS NULL; -- dziala

--d.
-- SELECT imie FROM ksiegowosc.pracownicy 
-- WHERE imie LIKE 'J%'; -- dziala

--e.
-- SELECT imie, nazwisko FROM ksiegowosc.pracownicy
-- WHERE imie LIKE '%a' AND nazwisko LIKE '%n%'; -- dziala

--f.
-- SELECT p.imie, p.nazwisko, (g.liczba_godzin - 160) AS liczba_nadgodzin
-- FROM ksiegowosc.pracownicy p
-- JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
-- WHERE (g.liczba_godzin - 160) > 0; -- dziala

--g
-- SELECT p.imie, p.nazwisko
-- FROM ksiegowosc.pracownicy p
-- JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
-- JOIN ksiegowosc.pensje s ON w.id_pensji = s.id_pensji
-- WHERE s.kwota BETWEEN '1500' AND '3000'; -- dziala

--h
-- SELECT p.imie, p.nazwisko
-- FROM ksiegowosc.pracownicy p
-- JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
-- JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
-- WHERE (g.liczba_godzin - 160) > 0 AND w.id_premii IS NULL; -- dziala

--i
-- SELECT p.imie, p.nazwisko, s.kwota
-- FROM ksiegowosc.pracownicy p
-- JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
-- JOIN ksiegowosc.pensje s ON s.id_pensji = w.id_pensji
-- ORDER BY s.kwota;

--j
-- SELECT p.imie, p.nazwisko, s.kwota, q.kwota
-- FROM ksiegowosc.pracownicy p
-- JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
-- JOIN ksiegowosc.pensje s ON s.id_pensji = w.id_pensji
-- JOIN ksiegowosc.premie q ON q.id_premii = w.id_premii
-- ORDER BY s.kwota DESC, q.kwota DESC;

--k.
-- SELECT COUNT(id_pensji) AS liczba_pracownikow, stanowisko
-- FROM ksiegowosc.pensje 
-- GROUP BY stanowisko; -- dziala

--l
-- SELECT MIN(kwota), MAX(kwota), AVG(CAST(kwota AS numeric))
-- FROM ksiegowosc.pensje 
-- WHERE stanowisko = 'KKK';

--m
-- SELECT SUM(kwota) AS Suma_wynagrodzen
-- FROM ksiegowosc.pensje;

--n 
-- SELECT SUM(kwota) AS Suma_wynagrodzen, stanowisko
-- FROM ksiegowosc.pensje
-- GROUP BY stanowisko;

--o
-- SELECT p.stanowisko, COUNT(p.id_pensji) AS liczba_premii
-- FROM ksiegowosc.pensje p
-- JOIN ksiegowosc.wynagrodzenie w ON p.id_pensji = w.id_pensji
-- GROUP BY p.stanowisko;


-- DELETE FROM ksiegowosc.wynagrodzenie
-- WHERE id_pracownika IN (
--     SELECT p.id_pracownika
--     FROM ksiegowosc.pracownicy p
--     JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
--     JOIN ksiegowosc.pensje s ON w.id_pensji = s.id_pensji
--     WHERE s.kwota < '1200'
-- );

DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT p.id_pracownika
    FROM ksiegowosc.pracownicy p
    JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
    JOIN ksiegowosc.pensje s ON w.id_pensji = s.id_pensji
    WHERE s.kwota < '1200'
);

select * from ksiegowosc.pracownicy;