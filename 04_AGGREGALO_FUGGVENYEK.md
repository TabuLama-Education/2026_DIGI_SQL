# 04 – Aggregáló függvények

Használt adatbázis: `mozi`

```sql
USE mozi;
```

Az aggregáló függvények több rekord adataiból egyetlen eredményt állítanak elő.

## COUNT

```sql
SELECT COUNT(*) AS vetitesek_szama
FROM jegyek;
```

## COUNT DISTINCT

```sql
SELECT COUNT(DISTINCT film_cim) AS filmek_szama
FROM jegyek;
```

## SUM

```sql
SELECT SUM(nezok_szama) AS osszes_nezo
FROM jegyek;
```

## AVG

```sql
SELECT AVG(nezok_szama) AS atlagos_nezoszam
FROM jegyek;
```

## MIN és MAX

```sql
SELECT MIN(ar) AS legolcsobb,
       MAX(ar) AS legdragabb
FROM jegyek;
```

## Feltétellel együtt

```sql
SELECT SUM(nezok_szama)
FROM jegyek
WHERE datum = '2024-05-04';
```

## Feladatok

1. Hány vetítés található a táblában?
2. Hány különböző film szerepel benne?
3. Összesen hány néző szerepel a teljes adatbázisban?
4. Mennyi a vetítések átlagos nézőszáma?
5. Mi a legmagasabb jegyár?
6. Mi a legalacsonyabb nézőszám?
7. Hány néző volt összesen 2024-05-04-én?
8. Hány vetítése volt a `Batman` című filmnek?
9. Mennyi volt a `Dune` vetítéseinek átlagos nézőszáma?
10. Hány különböző teremben volt vetítés?
