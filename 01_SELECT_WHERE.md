# 01 – SELECT, FROM, WHERE, DISTINCT

Használt adatbázis: `iskola`

```sql
USE iskola;
```

## SELECT és FROM

Minden oszlop:

```sql
SELECT *
FROM tanulok;
```

Csak meghatározott oszlopok:

```sql
SELECT nev, atlag
FROM tanulok;
```

## WHERE

A `WHERE` segítségével a sorokat szűrjük.

```sql
SELECT nev, atlag
FROM tanulok
WHERE atlag > 4.0;
```

Szöveges értéknél idézőjelet használunk:

```sql
SELECT nev
FROM tanulok
WHERE osztaly = '10.B';
```

## DISTINCT

Az ismétlődő értékeket egyszer jeleníti meg.

```sql
SELECT DISTINCT osztaly
FROM tanulok;
```

## Feladatok

### Alap

1. Írd ki az összes tanuló nevét!
2. Írd ki a tanulók nevét és életkorát!
3. Írd ki a 10.B osztály tanulóinak nevét!
4. Írd ki a 4.0-nál jobb átlagú tanulók nevét és átlagát!
5. Írd ki a 16 éves tanulókat!
6. Listázd az adatbázisban szereplő különböző osztályokat!

### Közepes

7. Írd ki azokat a tanulókat, akiknek az átlaga pontosan 4.1!
8. Írd ki azokat a tanulókat, akik nem a 10.A osztályba járnak!
9. Írd ki a 17 éves tanulók nevét, osztályát és átlagát!

### Önálló

10. Készíts olyan lekérdezést, amelyből csak azoknak a tanulóknak a neve és osztálya látszik, akik 4.5 vagy jobb átlagúak!
