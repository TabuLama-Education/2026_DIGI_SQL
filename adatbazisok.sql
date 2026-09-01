-- =========================================================
-- 2026 DIGI SQL – gyakorló adatbázisok
-- MariaDB / MySQL
-- =========================================================

-- =========================================================
-- 1. ISKOLA
-- =========================================================

DROP DATABASE IF EXISTS iskola;
CREATE DATABASE iskola CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE iskola;

CREATE TABLE tanulok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    eletkor INT NOT NULL,
    osztaly VARCHAR(10) NOT NULL,
    atlag DECIMAL(3,1) NOT NULL
);

INSERT INTO tanulok (nev, eletkor, osztaly, atlag) VALUES
('Kiss Anna', 16, '10.A', 4.7),
('Nagy Péter', 17, '10.B', 3.9),
('Tóth Réka', 16, '10.A', 4.4),
('Szabó Márk', 15, '9.C', 3.6),
('Varga Dóra', 17, '11.B', 4.9),
('Kovács Levente', 16, '10.C', 4.1),
('Molnár Eszter', 15, '9.A', 4.3),
('Balogh Máté', 17, '11.A', 3.8),
('Horváth Lilla', 16, '10.B', 4.6),
('Juhász Bence', 15, '9.B', 3.5);

-- =========================================================
-- 2. WEBÁRUHÁZ
-- =========================================================

DROP DATABASE IF EXISTS webaruhaz;
CREATE DATABASE webaruhaz CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE webaruhaz;

CREATE TABLE termekek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar INT NOT NULL,
    kategoria VARCHAR(50) NOT NULL,
    raktaron_db INT NOT NULL
);

INSERT INTO termekek (nev, ar, kategoria, raktaron_db) VALUES
('Laptop', 250000, 'elektronika', 5),
('Eger', 5000, 'elektronika', 50),
('Szek', 30000, 'butor', 10),
('Asztal', 60000, 'butor', 3),
('Fejhallgato', 20000, 'elektronika', 0),
('Lampa', 15000, 'lakas', 25),
('Monitor', 80000, 'elektronika', 7),
('Polc', 22000, 'butor', 4),
('Telefon', 180000, 'elektronika', 12),
('Szonyeg', 12000, 'lakas', 8);

-- =========================================================
-- 3. KÖNYVTÁR
-- =========================================================

DROP DATABASE IF EXISTS konyvtar;
CREATE DATABASE konyvtar CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE konyvtar;

CREATE TABLE konyvek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(150) NOT NULL,
    szerzo VARCHAR(100) NOT NULL,
    ev INT NOT NULL,
    mufaj VARCHAR(100) NOT NULL,
    oldalszam INT NULL
);

INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam) VALUES
('Az ajto', 'Szabo Magda', 1987, 'regeny', 280),
('Egri csillagok', 'Gardonyi Geza', 1901, 'tortenelmi regeny', 512),
('A Pal utcai fiuk', 'Molnar Ferenc', 1907, 'ifjusagi regeny', 192),
('Tizedes meg a tobbiek', 'Oszter Sandor', 1965, 'filmregeny', 210),
('Abigel', 'Szabo Magda', 1970, 'ifjusagi regeny', 430),
('Titokzatos tortenet', 'Ismeretlen szerzo', 2024, 'regeny', NULL),
('Lathatatlan ember', 'Geza Gardonyi', 1901, 'tortenelmi regeny', 350),
('Esti Kornel', 'Kosztolanyi Dezso', 1933, 'novellafuzer', 180),
('Legy jo mindhalalig', 'Moricz Zsigmond', 1920, 'regeny', 300),
('Utas es holdvilag', 'Szerb Antal', 1937, 'regeny', 270);

-- =========================================================
-- 4. MOZI
-- =========================================================

DROP DATABASE IF EXISTS mozi;
CREATE DATABASE mozi CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE mozi;

CREATE TABLE jegyek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    film_cim VARCHAR(100) NOT NULL,
    ar INT NOT NULL,
    nezok_szama INT NOT NULL,
    terem INT NOT NULL,
    datum DATE NOT NULL
);

INSERT INTO jegyek (film_cim, ar, nezok_szama, terem, datum) VALUES
('Avatar', 2500, 120, 1, '2024-05-01'),
('Batman', 2200, 80, 2, '2024-05-01'),
('Titanic', 2000, 150, 1, '2024-05-02'),
('Joker', 2400, 60, 3, '2024-05-02'),
('Avatar', 2500, 90, 2, '2024-05-03'),
('Dune', 2600, 110, 1, '2024-05-03'),
('Inception', 2300, 95, 2, '2024-05-04'),
('Interstellar', 2700, 130, 1, '2024-05-04'),
('Batman', 2200, 70, 3, '2024-05-05'),
('Titanic', 2000, 140, 2, '2024-05-05'),
('Joker', 2400, 75, 1, '2024-05-06'),
('Dune', 2600, 100, 2, '2024-05-06');

-- =========================================================
-- 5. SPORTEGYESÜLET
-- =========================================================

DROP DATABASE IF EXISTS sportegyesulet;
CREATE DATABASE sportegyesulet CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE sportegyesulet;

CREATE TABLE jatekosok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    eletkor INT NOT NULL,
    poszt VARCHAR(50) NOT NULL,
    fizetes INT NOT NULL,
    csapat VARCHAR(100) NOT NULL,
    mezszam INT NULL,
    serult VARCHAR(10) NOT NULL,
    golok_szama INT NOT NULL
);

INSERT INTO jatekosok (nev, eletkor, poszt, fizetes, csapat, mezszam, serult, golok_szama) VALUES
('Kiss Adam', 22, 'csatar', 450000, 'Villam FC', 9, 'nem', 14),
('Nagy Peter', 25, 'vedo', 390000, 'Villam FC', 4, 'nem', 2),
('Toth Mark', 21, 'kozeppalyas', 410000, 'Delfin SE', 8, 'igen', 5),
('Varga Daniel', 28, 'kapus', 500000, 'Delfin SE', 1, 'nem', 0),
('Horvath Levente', 24, 'csatar', 470000, 'Villam FC', 11, 'nem', 11),
('Balogh Aron', 19, 'vedo', 320000, 'Sasok SC', 3, 'nem', 1),
('Fekete Bence', 23, 'kozeppalyas', 430000, 'Sasok SC', 6, 'igen', 6),
('Molnar Gergo', 26, 'csatar', 520000, 'Delfin SE', 10, 'nem', 17),
('Juhasz Mate', 20, 'vedo', 340000, 'Villam FC', 5, 'nem', 0),
('Papp Roland', 27, 'kozeppalyas', 460000, 'Sasok SC', 7, 'nem', 8),
('Simon Patrik', 22, 'csatar', 440000, 'Sasok SC', 15, 'nem', 9),
('Kovacs Milan', 18, 'vedo', 300000, 'Delfin SE', NULL, 'nem', 0);

-- =========================================================
-- 6. KURZUSOK – többtáblás gyakorlás
-- =========================================================

DROP DATABASE IF EXISTS kurzusok;
CREATE DATABASE kurzusok CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE kurzusok;

CREATE TABLE tanarok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL
);

CREATE TABLE diakok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    varos VARCHAR(100) NOT NULL
);

CREATE TABLE kurzusok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    tanar_id INT NOT NULL,
    FOREIGN KEY (tanar_id) REFERENCES tanarok(id)
);

CREATE TABLE jelentkezesek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    diak_id INT NOT NULL,
    kurzus_id INT NOT NULL,
    datum DATE NOT NULL,
    FOREIGN KEY (diak_id) REFERENCES diakok(id),
    FOREIGN KEY (kurzus_id) REFERENCES kurzusok(id)
);

INSERT INTO tanarok (nev) VALUES
('Kovács Ádám'),
('Nagy Eszter'),
('Tóth Gábor');

INSERT INTO diakok (nev, varos) VALUES
('Farkas Anna', 'Budapest'),
('Molnár Bence', 'Szentendre'),
('Kiss Dóra', 'Budapest'),
('Varga Márk', 'Érd'),
('Szabó Lilla', 'Budapest'),
('Tóth Levente', 'Vác');

INSERT INTO kurzusok (nev, tanar_id) VALUES
('Python alapok', 1),
('SQL érettségi', 2),
('Webfejlesztés', 3),
('Python emelt', 1);

INSERT INTO jelentkezesek (diak_id, kurzus_id, datum) VALUES
(1, 1, '2026-01-10'),
(1, 2, '2026-01-11'),
(2, 1, '2026-01-12'),
(3, 2, '2026-01-13'),
(3, 4, '2026-01-14'),
(4, 3, '2026-01-15'),
(5, 1, '2026-01-16'),
(5, 2, '2026-01-16'),
(5, 4, '2026-01-17'),
(6, 3, '2026-01-18');

-- =========================================================
-- 7. VERSENY – emelt mintafeladat
-- =========================================================

DROP DATABASE IF EXISTS verseny;
CREATE DATABASE verseny CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE verseny;

CREATE TABLE iskolak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(150) NOT NULL,
    telepules VARCHAR(100) NOT NULL
);

CREATE TABLE versenyzok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    szuletesi_ev INT NOT NULL,
    iskola_id INT NOT NULL,
    FOREIGN KEY (iskola_id) REFERENCES iskolak(id)
);

CREATE TABLE fordulok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    datum DATE NOT NULL,
    helyszin VARCHAR(100) NOT NULL
);

CREATE TABLE eredmenyek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    versenyzo_id INT NOT NULL,
    fordulo_id INT NOT NULL,
    pont INT NOT NULL,
    FOREIGN KEY (versenyzo_id) REFERENCES versenyzok(id),
    FOREIGN KEY (fordulo_id) REFERENCES fordulok(id)
);

INSERT INTO iskolak (nev, telepules) VALUES
('Ganz Ábrahám Technikum', 'Budapest'),
('Bolyai Gimnázium', 'Budapest'),
('Révai Miklós Gimnázium', 'Győr'),
('Radnóti Miklós Gimnázium', 'Szeged'),
('Lovassy László Gimnázium', 'Veszprém');

INSERT INTO versenyzok (nev, szuletesi_ev, iskola_id) VALUES
('Nagy Anna', 2008, 1),
('Kiss Bence', 2007, 1),
('Tóth Dóra', 2008, 2),
('Farkas Márk', 2006, 2),
('Varga Eszter', 2009, 2),
('Molnár Levente', 2007, 3),
('Szabó Lilla', 2008, 3),
('Horváth Ádám', 2006, 4),
('Balogh Réka', 2009, 4),
('Juhász Máté', 2007, 5);

INSERT INTO fordulok (datum, helyszin) VALUES
('2026-02-14', 'Budapest'),
('2026-03-21', 'Győr'),
('2026-04-18', 'Szeged');

INSERT INTO eredmenyek (versenyzo_id, fordulo_id, pont) VALUES
(1, 1, 84), (1, 2, 91), (1, 3, 88),
(2, 1, 72), (2, 2, 76), (2, 3, 80),
(3, 1, 95), (3, 2, 89), (3, 3, 94),
(4, 1, 68), (4, 2, 73), (4, 3, 70),
(5, 1, 88), (5, 2, 90), (5, 3, 92),
(6, 1, 81), (6, 2, 86), (6, 3, 83),
(7, 1, 77), (7, 2, 82), (7, 3, 79),
(8, 1, 93), (8, 2, 95), (8, 3, 91),
(9, 1, 74), (9, 2, 80), (9, 3, 85),
(10, 1, 86), (10, 2, 84), (10, 3, 89);
