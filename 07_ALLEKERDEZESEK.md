# 07 – Allekérdezések

Használt adatbázis: `sportegyesulet`

```sql
USE sportegyesulet;
```

Az allekérdezés egy másik SQL-lekérdezésen belül található lekérdezés.

## Átlagnál nagyobb érték

```sql
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes > (
    SELECT AVG(fizetes)
    FROM jatekosok
);
```

A belső lekérdezés először kiszámítja az átlagot. A külső lekérdezés ehhez hasonlítja a rekordokat.

## Legnagyobb értékhez tartozó rekord

```sql
SELECT nev, fizetes
FROM jatekosok
WHERE fizetes = (
    SELECT MAX(fizetes)
    FROM jatekosok
);
```

Ez sokszor jobb, mint `ORDER BY ... LIMIT 1`, mert holtverseny esetén minden megfelelő rekordot visszaad.

## Feladatok

1. Listázd az átlagosnál magasabb fizetésű játékosokat!
2. Add meg a legmagasabb fizetésű játékos vagy játékosok nevét!
3. Add meg a legtöbb gólt szerző játékos vagy játékosok nevét!
4. Listázd azokat a játékosokat, akik az átlagosnál több gólt szereztek!
5. Add meg a legfiatalabb játékos vagy játékosok nevét és életkorát!
6. Listázd azokat a játékosokat, akik többet keresnek a `Villam FC` játékosainak átlagos fizetésénél!
7. Add meg azt vagy azokat a játékosokat, akiknek a fizetése megegyezik a teljes mezőny legkisebb fizetésével!
