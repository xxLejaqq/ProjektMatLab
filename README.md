# Ciągi Zbieżne - Projekt MATLAB

**POLITECHNIKA LUBELSKA**  
**WYDZIAŁ MATEMATYKI I INFORMATYKI TECHNICZNEJ**  
Kierunek: Inżynieria i Analiza Danych  
Przedmiot: Narzędzia informatyczne II  
Projekt zaliczeniowy MATLAB

---

## Autorzy

- Maja Darczuk
- Weronika Kozyra

---

## Spis Treści

1. [Opis projektu](#opis-projektu)
2. [Wymagania](#wymagania)
3. [Struktura projektu](#struktura-projektu)
4. [Ciągi zbieżne](#ciągi-zbieżne)
   - [Ciąg a_n](#ciąg-an)
   - [Ciąg b_n](#ciąg-bn)
   - [Ciąg c_n](#ciąg-cn)
   - [Ciąg d_n](#ciąg-dn)
   - [Ciąg e_n](#ciąg-en)
   - [Ciąg f_n](#ciąg-fn)
   - [Ciąg g_n](#ciąg-gn)
   - [Ciąg h_n](#ciąg-hn)
5. [Uruchamianie skryptów](#uruchamianie-skryptów)
6. [Źródła](#źródła)

---

## Opis projektu

Projekt dotyczy obliczania granic ciągów zbieżnych przy użyciu środowiska MATLAB. Dla każdego ciągu program oblicza:

- Granicę ciągu
- Wartości wyrazów ciągu
- Wartość n₀ dla zadanego parametru ε > 0
- Wizualizację graficzną ciągu wraz z granicą i pasmem ε

---

## Wymagania

- MATLAB (wersja R2016b lub nowsza)
- Symbolic Math Toolbox

---

## Struktura projektu

```
ProjektGrupowyMATLAB/
├── Skrypty_MATLAB/
│   ├── Ciag_an.m
│   ├── Ciag_bn.m
│   ├── Ciag_cn.m
│   ├── Ciag_dn.m
│   ├── Ciag_en.m
│   ├── Ciag_fn.m
│   ├── Ciag_gn.m
│   └── Ciag_hn.m
├── README.md
└── (inne pliki projektu)
```

---

## Ciągi zbieżne

### Ciąg a_n

**Wzór:** aₙ = 1/n

**Granica:** lim(n→∞) aₙ = 0

**Opis:** Ciąg harmoniczny odwrotności, malejący do zera.

---

### Ciąg b_n

**Wzór:** bₙ = (2n² + 3n + 4) / (4n² + 5n)

**Granica:** lim(n→∞) bₙ = 1/2

**Opis:** Ciąg wymierny, w którym najwyższe potęgi n w liczniku i mianowniku są równe.

---

### Ciąg c_n

**Wzór:** cₙ = 1 / (n + log(n + 1))

**Granica:** lim(n→∞) cₙ = 0

**Opis:** Ciąg zbliżający się do zera, wykorzystujący funkcję logarytmiczną.

---

### Ciąg d_n

**Wzór:** dₙ = (3n² + 5n - 1) / √(n⁴ + 3n³ + 1)

**Granica:** lim(n→∞) dₙ = 3

**Opis:** Ciąg z pierwiastkiem w mianowniku.

---

### Ciąg e_n

**Wzór:** eₙ = ((n² + 3n + 2) / (n² + 2n))^(2n+1)

**Granica:** lim(n→∞) eₙ = e

**Opis:** Ciąg dążący do liczby Eulera (e ≈ 2.71828).

---

### Ciąg f_n

**Wzór:** fₙ = (2ⁿ + 3ⁿ) / (3ⁿ + 4ⁿ)

**Granica:** lim(n→∞) fₙ = 0

**Opis:** Ciąg wykorzystujący funkcje wykładnicze.

---

### Ciąg g_n

**Wzór:** gₙ = (9ⁿ × n!) / (2n)!

**Granica:** lim(n→∞) gₙ = 0

**Opis:** Ciąg wykorzystujący silnię.

---

### Ciąg h_n

**Wzór:** hₙ = (n - sin(3n)) / (2n + sin(4n))

**Granica:** lim(n→∞) hₙ = 1/2

**Opis:** Ciąg wykorzystujący funkcje trygonometryczne.

---

## Uruchamianie skryptów

1. Otwórz MATLAB
2. Uruchom wybrany skrypt, np.:
   ```matlab
   Ciag_an
   ```
3. Postępuj zgodnie z instrukcjami wyświetlanymi w konsoli:
   - Podaj wartość ε > 0
4. Program wyświetli:
   - Granicę ciągu
   - Obliczoną wartość n₀
   - Wykres ciągu z zaznaczoną granicą i pasmem ε

---

## Źródła

- [1] uz.zgora.pl - Materiały dydaktyczne
- [2] mathworks.com - Dokumentacja MATLAB
