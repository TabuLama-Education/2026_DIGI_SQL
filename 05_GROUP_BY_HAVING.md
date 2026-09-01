# 05 – GROUP BY és HAVING

Használt adatbázis: `mozi`

```sql
USE mozi;
```

## Miért kell GROUP BY?

Ha nem az egész táblára, hanem csoportonként szeretnénk összesíteni.

```sql
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim;
```

## Csoportosítás többféleképpen

Terem szerint:

```sql
SELECT terem, COUNT(*) AS vetitesek
FROM jegyek
GROUP BY terem;
```

Dátum szerint:

```sql
SELECT datum, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY datum;
```

## WHERE és HAVING különbsége

- `WHERE` – a csoportosítás előtt rekordokat szűr;
- `HAVING` – a csoportosítás után csoportokat szűr.

```sql
SELECT film_cim, SUM(nezok_szama) AS osszes_nezo
FROM jegyek
GROUP BY film_cim
HAVING SUM(nezok_szama) >= 180;
```

## Feladatok

### Alap

1. Add meg filmenként a vetítések számát!
2. Add meg filmenként az összes nézőszámot!
3. Add meg termenként az összes nézőszámot!
4. Add meg naponként a vetítések számát!
5. Add meg filmenként az átlagos jegyárat!

### Közepes

6. Listázd azokat a filmeket, amelyek összes nézőszáma legalább 180!
7. Listázd azokat a termeket, ahol legalább 4 vetítés volt!
8. Melyik teremben volt összesen a legtöbb néző?
9. Melyik filmnél volt összesen a legtöbb néző?
10. Melyik napon volt a legkevesebb néző?

### Emelt felé

11. Add meg azokat a filmeket, amelyeknek egynél több vetítésük volt, a vetítésszám szerint csökkenő sorrendben!
12. Add meg azt a napot, amelyen a legnagyobb volt az összes nézőszám!
