# 00 – Bevezetés az SQL-be

## Mi az adatbázis?

Az adatbázis egymással kapcsolatban álló adatok rendezett gyűjteménye.

Egy relációs adatbázisban az adatokat táblákban tároljuk.

Példa:

| id | nev | osztaly | atlag |
|---:|---|---|---:|
| 1 | Kiss Anna | 10.A | 4.7 |
| 2 | Nagy Péter | 10.B | 3.9 |

## Alapfogalmak

- **tábla** – az összetartozó adatok helye;
- **mező / oszlop** – egy tulajdonság;
- **rekord / sor** – egy konkrét adatsor;
- **elsődleges kulcs (PRIMARY KEY)** – egy rekord egyedi azonosítója;
- **idegen kulcs (FOREIGN KEY)** – egy másik tábla rekordjára mutató mező.

## Az SQL legfontosabb utasításcsoportjai

### Lekérdezés

```sql
SELECT nev
FROM tanulok;
```

### Adat beszúrása

```sql
INSERT INTO tanulok (nev, eletkor, osztaly, atlag)
VALUES ('Minta Elek', 16, '10.A', 4.2);
```

### Adat módosítása

```sql
UPDATE tanulok
SET atlag = 4.5
WHERE id = 1;
```

### Adat törlése

```sql
DELETE FROM tanulok
WHERE id = 1;
```

## A SELECT lekérdezés gondolkodási sorrendje

Egy feladatnál először ezt a négy kérdést tedd fel:

1. Melyik táblából dolgozom?
2. Melyik mezőket kell megjeleníteni?
3. Milyen feltételnek kell megfelelni?
4. Kell-e rendezni vagy összesíteni?

Ezután írd meg az SQL-t.

## Első próba

Az `adatbazisok.sql` futtatása után:

```sql
USE iskola;

SELECT *
FROM tanulok;
```

## Gyakorlás

1. Nyisd meg az `iskola` adatbázist.
2. Kérdezd le a `tanulok` tábla minden adatát.
3. Kérdezd le csak a tanulók nevét.
4. Kérdezd le a tanulók nevét és átlagát.
5. Figyeld meg, melyik mező az elsődleges kulcs.
