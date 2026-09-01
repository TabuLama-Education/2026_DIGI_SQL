# 06 – Táblakapcsolatok és JOIN

Használt adatbázis: `kurzusok`

```sql
USE kurzusok;
```

## Miért használunk több táblát?

Nem célszerű ugyanazt az információt sok rekordban újra és újra eltárolni.

A gyakorló adatbázis három táblája:

```text
diakok
  |
  | 1:N
  v
jelentkezesek
  ^
  | N:1
  |
kurzusok
```

A `jelentkezesek` kapcsolótábla megmondja, melyik diák melyik kurzusra jár.

## INNER JOIN

```sql
SELECT d.nev, k.nev AS kurzus
FROM jelentkezesek j
INNER JOIN diakok d ON j.diak_id = d.id
INNER JOIN kurzusok k ON j.kurzus_id = k.id;
```

## Táblák rövidítése

```sql
FROM jelentkezesek j
JOIN diakok d ON j.diak_id = d.id
```

A `j` és `d` rövid táblanevek. Összetett lekérdezéseknél sokkal olvashatóbbá teszik a kódot.

## Feladatok

### Alap

1. Írd ki minden jelentkezésnél a diák nevét és a kurzus nevét!
2. Írd ki azokat a diákokat, akik Python kurzusra jelentkeztek!
3. Jelenítsd meg a kurzusok nevét és a hozzájuk tartozó tanár nevét!
4. Listázd a jelentkezésekhez tartozó diák nevét, kurzus nevét és a jelentkezés dátumát!

### Közepes

5. Add meg kurzusonként a jelentkezők számát!
6. Mely kurzusokra jelentkezett legalább 2 diák?
7. Add meg azoknak a diákoknak a nevét, akik legalább két kurzusra jelentkeztek!
8. Melyik kurzusnak van a legtöbb jelentkezője?

### Emelt felé

9. Add meg tanáronként, hogy összesen hány jelentkezés tartozik az általuk vezetett kurzusokhoz!
10. Listázd a budapesti diákok által választott kurzusokat úgy, hogy a diák neve és a kurzus neve is szerepeljen!
