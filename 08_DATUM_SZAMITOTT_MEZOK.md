# 08 – Dátumok és számított mezők

Használt adatbázis: `mozi`

```sql
USE mozi;
```

## Számított mező

A tárolt adatokból új értéket számíthatunk.

```sql
SELECT film_cim,
       ar,
       nezok_szama,
       ar * nezok_szama AS bevetel
FROM jegyek;
```

## Összesítés számított mezővel

```sql
SELECT film_cim,
       SUM(ar * nezok_szama) AS teljes_bevetel
FROM jegyek
GROUP BY film_cim;
```

## Dátum részei

MariaDB/MySQL:

```sql
SELECT datum,
       YEAR(datum) AS ev,
       MONTH(datum) AS honap,
       DAY(datum) AS nap
FROM jegyek;
```

## Feladatok

1. Jelenítsd meg minden vetítés címét, nézőszámát és bevételét!
2. Add meg a teljes mozi összbevételét!
3. Add meg filmenként az összbevételt!
4. Add meg naponként az összbevételt!
5. Melyik film hozta a legtöbb bevételt?
6. Melyik napon volt a legkisebb összbevétel?
7. Listázd a május 4-i vetítéseket!
8. Add meg a májusi vetítések számát!
9. Jelenítsd meg filmenként az egy nézőre jutó jegyár átlagát!
10. Add meg a 100 vagy több nézős vetítések teljes bevételét!
