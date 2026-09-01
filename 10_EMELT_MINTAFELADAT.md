# 10 – Emelt digitális kultúra SQL mintafeladat

## Versenyeredmények

A `verseny` adatbázis egy iskolák közötti programozási versenysorozat adatait tartalmazza.

Az adatbázist az `adatbazisok.sql` fájl hozza létre.

### Táblák

**iskolak**

- `id` – az iskola azonosítója
- `nev` – az iskola neve
- `telepules` – az iskola települése

**versenyzok**

- `id` – a versenyző azonosítója
- `nev` – a versenyző neve
- `szuletesi_ev` – születési év
- `iskola_id` – a versenyző iskolájának azonosítója

**fordulok**

- `id` – forduló azonosítója
- `datum` – forduló dátuma
- `helyszin` – helyszín

**eredmenyek**

- `id` – eredmény azonosítója
- `versenyzo_id` – versenyző azonosítója
- `fordulo_id` – forduló azonosítója
- `pont` – elért pontszám

## Feladatok

A megoldásokban pontosan csak a kért mezők jelenjenek meg.

### 1. Budapest

Írasd ki a budapesti iskolák nevét ábécérendben!

### 2. Fiatalok

Add meg a 2008-ban vagy később született versenyzők nevét és születési évét! A legfiatalabb versenyzők kerüljenek előre.

### 3. Versenyző és iskola

Jelenítsd meg minden versenyző nevét és iskolájának nevét!

### 4. Iskolánként

Add meg iskolánként a versenyzők számát! A legtöbb versenyzővel rendelkező iskola kerüljön előre.

### 5. Fordulónként

Add meg fordulónként a forduló dátumát és az ott kiosztott összes pontot!

### 6. Kiemelkedő iskolák

Add meg azoknak az iskoláknak a nevét, amelyek versenyzői összesen legalább 250 pontot szereztek!

### 7. Legjobb eredmény

Add meg annak a versenyzőnek vagy azoknak a versenyzőknek a nevét, akik a teljes adatbázis legmagasabb egyéni fordulóeredményét érték el! A név mellett a pontszám is jelenjen meg.

### 8. Átlag felett

Listázd azoknak a versenyzőknek a nevét, akiknek az összes fordulón elért átlagpontszáma magasabb az összes eredmény átlagánál!

### 9. Legsikeresebb iskola

Add meg annak az iskolának a nevét, amelynek versenyzői összesen a legtöbb pontot szerezték!

### 10. Összetett

Add meg azoknak a budapesti iskoláknak a nevét és versenyzőik összpontszámát, amelyek legalább két különböző versenyzővel szerepelnek az eredmények között! Az eredmény az összpontszám szerint csökkenő sorrendben jelenjen meg.

---

## Vizsgaszimulációs szabály

A feladatok megoldásakor ne nézd meg a `MEGOLDASOK.md` fájlt.

Minden lekérdezést külön `.sql` fájlba is elmenthetsz:

```text
1budapest.sql
2fiatalok.sql
3iskola.sql
...
```

Ezzel a valódi vizsga munkamódszerét is gyakorolhatod.
