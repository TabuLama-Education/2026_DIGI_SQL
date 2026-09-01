# SQL puska – gyors ismétlés

## Alap lekérdezés

```sql
SELECT mezo1, mezo2
FROM tabla;
```

## Szűrés

```sql
SELECT *
FROM tabla
WHERE feltetel;
```

## Több feltétel

```sql
WHERE feltetel1 AND feltetel2
WHERE feltetel1 OR feltetel2
WHERE NOT feltetel
```

## Szövegrészlet

```sql
WHERE nev LIKE 'A%'
WHERE nev LIKE '%alma%'
```

## Tartomány

```sql
WHERE ar BETWEEN 1000 AND 5000
```

## Felsorolás

```sql
WHERE kategoria IN ('A', 'B', 'C')
```

## NULL

```sql
WHERE mezo IS NULL
WHERE mezo IS NOT NULL
```

## Rendezés

```sql
ORDER BY mezo ASC
ORDER BY mezo DESC
```

## Ismétlődés nélkül

```sql
SELECT DISTINCT mezo
FROM tabla;
```

## Aggregáló függvények

```sql
COUNT(*)
COUNT(DISTINCT mezo)
SUM(mezo)
AVG(mezo)
MIN(mezo)
MAX(mezo)
```

## Csoportosítás

```sql
SELECT kategoria, COUNT(*)
FROM tabla
GROUP BY kategoria;
```

## Csoport szűrése

```sql
SELECT kategoria, COUNT(*)
FROM tabla
GROUP BY kategoria
HAVING COUNT(*) >= 3;
```

## JOIN

```sql
SELECT a.nev, b.nev
FROM tabla_a a
INNER JOIN tabla_b b
    ON a.b_id = b.id;
```

## Több JOIN

```sql
SELECT d.nev, k.nev
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
JOIN kurzusok k ON j.kurzus_id = k.id;
```

## Allekérdezés

```sql
SELECT nev, ertek
FROM tabla
WHERE ertek > (
    SELECT AVG(ertek)
    FROM tabla
);
```

## Számított mező

```sql
SELECT ar * mennyiseg AS osszeg
FROM tabla;
```

## Dátum

```sql
YEAR(datum)
MONTH(datum)
DAY(datum)
```

## SQL végrehajtási gondolkodás

Egy összetett lekérdezés tipikus felépítése:

```sql
SELECT ...
FROM ...
JOIN ... ON ...
WHERE ...
GROUP BY ...
HAVING ...
ORDER BY ...;
```

## WHERE vagy HAVING?

- `WHERE` – egyedi rekordokat szűr.
- `HAVING` – csoportosítás után csoportokat szűr.

## Vizsgatipp

Ne azt kérdezd először, hogy „melyik SQL-parancs kell?”, hanem ezt:

1. Mit kell megjeleníteni?
2. Melyik táblából?
3. Milyen kapcsolat kell?
4. Mit kell szűrni?
5. Kell-e csoportosítani?
6. Csoportot kell-e szűrni?
7. Kell-e rendezni?
