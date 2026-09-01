# 02 – Feltételek és rendezés

Használt adatbázis: `webaruhaz`

```sql
USE webaruhaz;
```

## AND

Minden feltételnek teljesülnie kell.

```sql
SELECT nev, ar
FROM termekek
WHERE kategoria = 'elektronika'
  AND raktaron_db > 0;
```

## OR

Legalább az egyik feltételnek teljesülnie kell.

```sql
SELECT nev, ar
FROM termekek
WHERE kategoria = 'butor'
   OR ar > 50000;
```

## NOT

Egy feltétel tagadása.

```sql
SELECT nev
FROM termekek
WHERE NOT kategoria = 'lakas';
```

## ORDER BY

```sql
SELECT nev, ar
FROM termekek
ORDER BY ar ASC;
```

Csökkenő sorrend:

```sql
ORDER BY ar DESC;
```

## LIKE

Szövegrészlet keresése.

```sql
SELECT nev
FROM termekek
WHERE nev LIKE '%or%';
```

- `%` – tetszőleges számú karakter;
- `_` – pontosan egy karakter.

## BETWEEN

```sql
SELECT nev, ar
FROM termekek
WHERE ar BETWEEN 10000 AND 50000;
```

## IN

```sql
SELECT nev, kategoria
FROM termekek
WHERE kategoria IN ('elektronika', 'butor');
```

## Feladatok

### Alap

1. Listázd az elektronikai termékeket!
2. Listázd azokat a termékeket, amelyek ára nagyobb 20 000 Ft-nál!
3. Listázd a termékeket ár szerint növekvő sorrendben!
4. Listázd a 4 legdrágább terméket!
5. Listázd azokat a termékeket, amelyekből nincs raktáron!

### Közepes

6. Listázd azokat a termékeket, amelyek elektronikai kategóriájúak és van belőlük raktáron!
7. Listázd a bútorokat vagy az 50 000 Ft-nál drágább termékeket!
8. Listázd az elektronikai vagy bútor kategóriájú, 20 000 Ft-nál drágább termékeket!
9. Listázd a 10 000 és 50 000 Ft közötti termékeket ár szerint csökkenően!
10. Listázd azokat a termékeket, amelyek neve tartalmazza az `o` betűt!

### Önálló

11. Jelenítsd meg a három legdrágább, raktáron lévő termék nevét, árát és kategóriáját!
12. Listázd azokat a termékeket, amelyek kategóriája elektronika vagy bútor, és az áruk 15 000 és 100 000 Ft közé esik!
