# Megoldások

A megoldások egy-egy lehetséges megoldást mutatnak. Ugyanaz a feladat többféle helyes SQL-lekérdezéssel is megoldható.

---

# 01 – SELECT, WHERE

```sql
-- 1
SELECT nev FROM tanulok;

-- 2
SELECT nev, eletkor FROM tanulok;

-- 3
SELECT nev FROM tanulok WHERE osztaly = '10.B';

-- 4
SELECT nev, atlag FROM tanulok WHERE atlag > 4.0;

-- 5
SELECT * FROM tanulok WHERE eletkor = 16;

-- 6
SELECT DISTINCT osztaly FROM tanulok;

-- 7
SELECT * FROM tanulok WHERE atlag = 4.1;

-- 8
SELECT * FROM tanulok WHERE osztaly <> '10.A';

-- 9
SELECT nev, osztaly, atlag FROM tanulok WHERE eletkor = 17;

-- 10
SELECT nev, osztaly FROM tanulok WHERE atlag >= 4.5;
```

# 02 – Feltételek és rendezés

```sql
-- 1
SELECT * FROM termekek WHERE kategoria = 'elektronika';

-- 2
SELECT * FROM termekek WHERE ar > 20000;

-- 3
SELECT * FROM termekek ORDER BY ar ASC;

-- 4
SELECT * FROM termekek ORDER BY ar DESC LIMIT 4;

-- 5
SELECT * FROM termekek WHERE raktaron_db = 0;

-- 6
SELECT * FROM termekek
WHERE kategoria = 'elektronika' AND raktaron_db > 0;

-- 7
SELECT * FROM termekek
WHERE kategoria = 'butor' OR ar > 50000;

-- 8
SELECT * FROM termekek
WHERE kategoria IN ('elektronika', 'butor') AND ar > 20000;

-- 9
SELECT * FROM termekek
WHERE ar BETWEEN 10000 AND 50000
ORDER BY ar DESC;

-- 10
SELECT * FROM termekek WHERE nev LIKE '%o%';

-- 11
SELECT nev, ar, kategoria
FROM termekek
WHERE raktaron_db > 0
ORDER BY ar DESC
LIMIT 3;

-- 12
SELECT *
FROM termekek
WHERE kategoria IN ('elektronika', 'butor')
  AND ar BETWEEN 15000 AND 100000;
```

# 03 – CRUD és NULL

```sql
-- 1
INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam)
VALUES ('Python kezdőknek', 'Minta Elek', 2024, 'szakmai', 280);

-- 2
UPDATE konyvek SET mufaj = 'regeny' WHERE cim = 'Abigel';

-- 3
UPDATE konyvek SET oldalszam = 200 WHERE cim = 'Esti Kornel';

-- 4
SELECT * FROM konyvek WHERE oldalszam IS NULL;

-- 5
SELECT * FROM konyvek WHERE oldalszam IS NOT NULL;

-- 6
INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam)
VALUES ('Ismeretlen kézirat', 'Névtelen', 2026, 'regeny', NULL);

-- 7
DELETE FROM konyvek WHERE cim = 'Ismeretlen kézirat';

-- 8
UPDATE konyvek
SET mufaj = 'történelmi regény'
WHERE mufaj = 'tortenelmi regeny';
```

# 04 – Aggregáló függvények

```sql
-- 1
SELECT COUNT(*) FROM jegyek;

-- 2
SELECT COUNT(DISTINCT film_cim) FROM jegyek;

-- 3
SELECT SUM(nezok_szama) FROM jegyek;

-- 4
SELECT AVG(nezok_szama) FROM jegyek;

-- 5
SELECT MAX(ar) FROM jegyek;

-- 6
SELECT MIN(nezok_szama) FROM jegyek;

-- 7
SELECT SUM(nezok_szama)
FROM jegyek
WHERE datum = '2024-05-04';

-- 8
SELECT COUNT(*)
FROM jegyek
WHERE film_cim = 'Batman';

-- 9
SELECT AVG(nezok_szama)
FROM jegyek
WHERE film_cim = 'Dune';

-- 10
SELECT COUNT(DISTINCT terem)
FROM jegyek;
```

# 05 – GROUP BY és HAVING

```sql
-- 1
SELECT film_cim, COUNT(*) AS vetitesek
FROM jegyek
GROUP BY film_cim;

-- 2
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim;

-- 3
SELECT terem, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY terem;

-- 4
SELECT datum, COUNT(*) AS vetitesek
FROM jegyek
GROUP BY datum;

-- 5
SELECT film_cim, AVG(ar) AS atlag_ar
FROM jegyek
GROUP BY film_cim;

-- 6
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim
HAVING SUM(nezok_szama) >= 180;

-- 7
SELECT terem, COUNT(*) AS vetitesek
FROM jegyek
GROUP BY terem
HAVING COUNT(*) >= 4;

-- 8
SELECT terem, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY terem
ORDER BY osszes_nezo DESC
LIMIT 1;

-- 9
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim
ORDER BY osszes_nezo DESC
LIMIT 1;

-- 10
SELECT datum, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY datum
ORDER BY osszes_nezo ASC
LIMIT 1;

-- 11
SELECT film_cim, COUNT(*) AS vetitesek
FROM jegyek
GROUP BY film_cim
HAVING COUNT(*) > 1
ORDER BY vetitesek DESC;

-- 12
SELECT datum, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY datum
ORDER BY osszes_nezo DESC
LIMIT 1;
```

# 06 – JOIN

```sql
-- 1
SELECT d.nev, k.nev AS kurzus
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
JOIN kurzusok k ON j.kurzus_id = k.id;

-- 2
SELECT d.nev
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
JOIN kurzusok k ON j.kurzus_id = k.id
WHERE k.nev LIKE 'Python%';

-- 3
SELECT k.nev AS kurzus, t.nev AS tanar
FROM kurzusok k
JOIN tanarok t ON k.tanar_id = t.id;

-- 4
SELECT d.nev, k.nev AS kurzus, j.datum
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
JOIN kurzusok k ON j.kurzus_id = k.id;

-- 5
SELECT k.nev, COUNT(*) AS jelentkezok
FROM jelentkezesek j
JOIN kurzusok k ON j.kurzus_id = k.id
GROUP BY k.id, k.nev;

-- 6
SELECT k.nev, COUNT(*) AS jelentkezok
FROM jelentkezesek j
JOIN kurzusok k ON j.kurzus_id = k.id
GROUP BY k.id, k.nev
HAVING COUNT(*) >= 2;

-- 7
SELECT d.nev, COUNT(*) AS kurzusok_szama
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
GROUP BY d.id, d.nev
HAVING COUNT(*) >= 2;

-- 8
SELECT k.nev, COUNT(*) AS jelentkezok
FROM jelentkezesek j
JOIN kurzusok k ON j.kurzus_id = k.id
GROUP BY k.id, k.nev
ORDER BY jelentkezok DESC
LIMIT 1;

-- 9
SELECT t.nev, COUNT(j.id) AS jelentkezesek
FROM tanarok t
JOIN kurzusok k ON k.tanar_id = t.id
JOIN jelentkezesek j ON j.kurzus_id = k.id
GROUP BY t.id, t.nev;

-- 10
SELECT d.nev, k.nev AS kurzus
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
JOIN kurzusok k ON j.kurzus_id = k.id
WHERE d.varos = 'Budapest';
```

# 07 – Allekérdezések

```sql
-- 1
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes > (SELECT AVG(fizetes) FROM jatekosok);

-- 2
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes = (SELECT MAX(fizetes) FROM jatekosok);

-- 3
SELECT nev, golok_szama
FROM jatekosok
WHERE golok_szama = (SELECT MAX(golok_szama) FROM jatekosok);

-- 4
SELECT nev, golok_szama
FROM jatekosok
WHERE golok_szama > (SELECT AVG(golok_szama) FROM jatekosok);

-- 5
SELECT nev, eletkor
FROM jatekosok
WHERE eletkor = (SELECT MIN(eletkor) FROM jatekosok);

-- 6
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes > (
    SELECT AVG(fizetes)
    FROM jatekosok
    WHERE csapat = 'Villam FC'
);

-- 7
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes = (SELECT MIN(fizetes) FROM jatekosok);
```

# 08 – Dátum és számított mező

```sql
-- 1
SELECT film_cim, nezok_szama, ar * nezok_szama AS bevetel
FROM jegyek;

-- 2
SELECT SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek;

-- 3
SELECT film_cim, SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek
GROUP BY film_cim;

-- 4
SELECT datum, SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek
GROUP BY datum;

-- 5
SELECT film_cim, SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek
GROUP BY film_cim
ORDER BY osszbevetel DESC
LIMIT 1;

-- 6
SELECT datum, SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek
GROUP BY datum
ORDER BY osszbevetel ASC
LIMIT 1;

-- 7
SELECT *
FROM jegyek
WHERE datum = '2024-05-04';

-- 8
SELECT COUNT(*)
FROM jegyek
WHERE MONTH(datum) = 5;

-- 9
SELECT film_cim, AVG(ar) AS atlagos_jegyar
FROM jegyek
GROUP BY film_cim;

-- 10
SELECT SUM(ar * nezok_szama) AS bevetel
FROM jegyek
WHERE nezok_szama >= 100;
```


# 09 – Komplex feladatok

```sql
-- A/1
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim
ORDER BY osszes_nezo DESC
LIMIT 1;

-- A/2
SELECT datum, SUM(ar * nezok_szama) AS osszbevetel
FROM jegyek
GROUP BY datum
ORDER BY osszbevetel DESC
LIMIT 1;

-- A/3
SELECT film_cim,
       COUNT(*) AS vetitesek,
       SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim
HAVING COUNT(*) > 1
   AND SUM(nezok_szama) > 150;

-- A/4
SELECT film_cim,
       datum,
       ar * nezok_szama AS bevetel
FROM jegyek
WHERE ar * nezok_szama > (
    SELECT AVG(ar * nezok_szama)
    FROM jegyek
);

-- A/5
SELECT terem, AVG(nezok_szama) AS atlagos_nezoszam
FROM jegyek
GROUP BY terem
ORDER BY atlagos_nezoszam DESC
LIMIT 1;

-- B/6
SELECT k.nev AS kurzus,
       t.nev AS tanar,
       COUNT(j.id) AS jelentkezok
FROM kurzusok k
JOIN tanarok t ON k.tanar_id = t.id
LEFT JOIN jelentkezesek j ON j.kurzus_id = k.id
GROUP BY k.id, k.nev, t.nev;

-- B/7
SELECT d.nev
FROM diakok d
JOIN jelentkezesek j ON j.diak_id = d.id
GROUP BY d.id, d.nev
HAVING COUNT(*) > 1;

-- B/8
SELECT k.nev
FROM kurzusok k
JOIN jelentkezesek j ON j.kurzus_id = k.id
GROUP BY k.id, k.nev
HAVING COUNT(*) = (
    SELECT MAX(db)
    FROM (
        SELECT COUNT(*) AS db
        FROM jelentkezesek
        GROUP BY kurzus_id
    ) x
);

-- B/9
SELECT d.varos, COUNT(*) AS jelentkezesek
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
GROUP BY d.varos;

-- B/10
SELECT t.nev, COUNT(j.id) AS jelentkezesek
FROM tanarok t
JOIN kurzusok k ON k.tanar_id = t.id
JOIN jelentkezesek j ON j.kurzus_id = k.id
GROUP BY t.id, t.nev
ORDER BY jelentkezesek DESC
LIMIT 1;

-- C/11
SELECT csapat,
       COUNT(*) AS jatekosok_szama,
       AVG(fizetes) AS atlagfizetes
FROM jatekosok
GROUP BY csapat;

-- C/12
SELECT csapat, SUM(golok_szama) AS golok
FROM jatekosok
GROUP BY csapat
ORDER BY golok DESC
LIMIT 1;

-- C/13
SELECT j1.nev, j1.csapat, j1.fizetes
FROM jatekosok j1
WHERE j1.fizetes > (
    SELECT AVG(j2.fizetes)
    FROM jatekosok j2
    WHERE j2.csapat = j1.csapat
);

-- C/14
SELECT poszt, MAX(golok_szama) AS legtobb_gol
FROM jatekosok
GROUP BY poszt;

-- C/15
SELECT nev, eletkor, fizetes
FROM jatekosok
WHERE eletkor < (SELECT AVG(eletkor) FROM jatekosok)
  AND serult = 'nem'
ORDER BY fizetes DESC;
```

# 10 – Emelt mintafeladat

```sql
USE verseny;

-- 1
SELECT nev
FROM iskolak
WHERE telepules = 'Budapest'
ORDER BY nev;

-- 2
SELECT nev, szuletesi_ev
FROM versenyzok
WHERE szuletesi_ev >= 2008
ORDER BY szuletesi_ev DESC;

-- 3
SELECT v.nev, i.nev AS iskola
FROM versenyzok v
JOIN iskolak i ON v.iskola_id = i.id;

-- 4
SELECT i.nev, COUNT(v.id) AS versenyzok_szama
FROM iskolak i
JOIN versenyzok v ON v.iskola_id = i.id
GROUP BY i.id, i.nev
ORDER BY versenyzok_szama DESC;

-- 5
SELECT f.datum, SUM(e.pont) AS osszpont
FROM eredmenyek e
JOIN fordulok f ON e.fordulo_id = f.id
GROUP BY f.id, f.datum;

-- 6
SELECT i.nev
FROM iskolak i
JOIN versenyzok v ON v.iskola_id = i.id
JOIN eredmenyek e ON e.versenyzo_id = v.id
GROUP BY i.id, i.nev
HAVING SUM(e.pont) >= 250;

-- 7
SELECT v.nev, e.pont
FROM eredmenyek e
JOIN versenyzok v ON e.versenyzo_id = v.id
WHERE e.pont = (SELECT MAX(pont) FROM eredmenyek);

-- 8
SELECT v.nev
FROM versenyzok v
JOIN eredmenyek e ON e.versenyzo_id = v.id
GROUP BY v.id, v.nev
HAVING AVG(e.pont) > (SELECT AVG(pont) FROM eredmenyek);

-- 9
SELECT i.nev
FROM iskolak i
JOIN versenyzok v ON v.iskola_id = i.id
JOIN eredmenyek e ON e.versenyzo_id = v.id
GROUP BY i.id, i.nev
ORDER BY SUM(e.pont) DESC
LIMIT 1;

-- 10
SELECT i.nev, SUM(e.pont) AS osszpont
FROM iskolak i
JOIN versenyzok v ON v.iskola_id = i.id
JOIN eredmenyek e ON e.versenyzo_id = v.id
WHERE i.telepules = 'Budapest'
GROUP BY i.id, i.nev
HAVING COUNT(DISTINCT v.id) >= 2
ORDER BY osszpont DESC;
```
