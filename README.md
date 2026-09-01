# 2026 DIGI SQL

Emelt szintű digitális kultúra érettségihez készült SQL tananyag és gyakorlófeladat-gyűjtemény.

A tananyag célja, hogy a teljesen kezdő szintről fokozatosan eljusson az emelt szintű érettségi adatbázis-kezelési feladatainak önálló megoldásáig.

## Tanulási út

| Modul | Téma | Fő elemek |
|---|---|---|
| 00 | Bevezetés | adatbázis, tábla, rekord, mező, kulcsok |
| 01 | SELECT és WHERE | SELECT, FROM, WHERE, DISTINCT |
| 02 | Feltételek és rendezés | AND, OR, NOT, LIKE, IN, BETWEEN, ORDER BY |
| 03 | Adatmódosítás és NULL | INSERT, UPDATE, DELETE, IS NULL |
| 04 | Aggregáló függvények | COUNT, SUM, AVG, MIN, MAX |
| 05 | Csoportosítás | GROUP BY, HAVING |
| 06 | Táblakapcsolatok | PRIMARY KEY, FOREIGN KEY, INNER JOIN, több JOIN |
| 07 | Allekérdezések | beágyazott SELECT, szélsőértékek, átlaghoz viszonyítás |
| 08 | Dátumok és számított mezők | dátumkezelés, aritmetikai kifejezések |
| 09 | Komplex lekérdezések | több SQL-eszköz kombinálása |
| 10 | Emelt érettségi mintafeladat | önálló, vizsgaszerű feladatsor |

## Javasolt használat

1. Futtasd az `adatbazisok.sql` fájlt MariaDB/MySQL környezetben.
2. Haladj sorrendben a modulokon.
3. Először próbáld megoldani a feladatokat segítség nélkül.
4. Csak ezután ellenőrizd a `MEGOLDASOK.md` fájlt.
5. A végén oldd meg a `10_EMELT_MINTAFELADAT.md` feladatsort önállóan.

## Vizsgára készülőknek

A tananyag SQL-je MariaDB/MySQL-kompatibilis. Gyakorlásra használható például phpMyAdmin, MariaDB vagy MySQL Workbench környezetben.

Érettségi feladatnál mindig figyelj arra, hogy:

- pontosan a kért mezőket jelenítsd meg;
- ne legyen felesleges oszlop a lekérdezésben;
- a rendezés pontosan a feladat szerint történjen;
- a csoportosítás előtt gondold végig, mi alkot egy csoportot;
- több tábla esetén először keresd meg a kulcsmezők kapcsolatát;
- a megoldás előtt ne SQL-parancsban, hanem a feladat logikájában gondolkodj.

## Fájlok

- `adatbazisok.sql` – a gyakorláshoz szükséges adatbázisok és mintaadatok
- `00_BEVEZETES.md` – alapfogalmak
- `01_SELECT_WHERE.md` ... `10_EMELT_MINTAFELADAT.md` – tananyag és feladatok
- `MEGOLDASOK.md` – megoldások
- `SQL_PUSKA.md` – rövid összefoglaló vizsga előtti ismétléshez

## Fontos

A modulok első része tanító jellegű. A későbbi feladatokban egyre kevesebb segítség található. A 10. modul már vizsgaszerű: ott a feladat szövegéből kell felismerni a szükséges SQL-megoldást.
