# 03 – INSERT, UPDATE, DELETE és NULL

Használt adatbázis: `konyvtar`

```sql
USE konyvtar;
```

## INSERT

```sql
INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam)
VALUES ('Java programozás alapjai', 'Kovacs Bela', 2020, 'szakmai', 350);
```

## UPDATE

```sql
UPDATE konyvek
SET mufaj = 'regeny'
WHERE cim = 'Abigel';
```

A `WHERE` kihagyása minden rekordot módosíthat, ezért különösen figyelj rá.

## DELETE

```sql
DELETE FROM konyvek
WHERE cim = 'Titokzatos tortenet';
```

A `WHERE` kihagyása minden rekord törlését okozhatja.

## NULL

A `NULL` hiányzó vagy ismeretlen értéket jelöl.

Helyes:

```sql
SELECT *
FROM konyvek
WHERE oldalszam IS NULL;
```

Nem helyes:

```sql
WHERE oldalszam = NULL;
```

Nem NULL:

```sql
WHERE oldalszam IS NOT NULL;
```

## Feladatok

1. Szúrj be egy új könyvet:
   - cím: `Python kezdőknek`
   - szerző: `Minta Elek`
   - év: `2024`
   - műfaj: `szakmai`
   - oldalszám: `280`

2. Módosítsd az `Abigel` műfaját `regeny` értékre!
3. Módosítsd az `Esti Kornel` oldalszámát 200-ra!
4. Listázd azokat a könyveket, amelyeknél nincs megadva oldalszám!
5. Listázd azokat, amelyeknél az oldalszám ismert!
6. Szúrj be egy `Ismeretlen kézirat` című könyvet úgy, hogy az oldalszám legyen `NULL`!
7. Töröld az előző feladatban beszúrt `Ismeretlen kézirat` rekordot!
8. Módosítsd az összes `tortenelmi regeny` műfajú könyvet `történelmi regény` értékre!
