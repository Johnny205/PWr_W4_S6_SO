# Tematy zadań do laboratorium Systemów Operacyjnych  

## Grep

1. Pobrać paczkę do testów: `wget https://github.com/google/guetzli/archive/master.zip`
2. Rozpakować: `unzip master.zip`
3. Napisać skrypt który przyjmuje ścieżkę do katalogu jako parametr oraz wykonuje na wszystkich plikach w nim się znajdujących (rekursywnie) następujące akcje (każda za pomocą pojedynczego potoku):
 * zlicza ilość linii zawierających słówko `google`
 * zlicza ilość pustych linii
 * zlicza ilość niepustych linii
 * zlicza ilość linii zakończonych średnikiem `;`
 * zlicza ilość linii zawierających tylko 2 znaki
 * zlicza ilość linii nie zawierających cyfr `0-9` oraz podkreślników `_`
 * zlicza ilość linii zawierających dokładnie dwie kropki obok siebie. Przykładowa linijka pasująca do wzorca: `//   x - offset .. x + square_size - offset - 1,`
 * zlicza ilość linii zawierających liczby hexadecymalne. Przykładowe liczby hexadecymalne: `0xff9900` lub `0xFF9900`
 * zlicza ilość linii zakończonych trójliterowym rozszerzeniem pliku. Przykładowa linijka pasująca do wzorca: `BEES_PNG=$(dirname $0)/bees.png`
 * zlicza ilość klas `class`

## AWK

Napisać następujące skrypty w AWK:

1. Skrypt wyswietlajacy zawartosc pliku wraz z numerami linii np:
```
1 #!/bin/bash
2
3 pids=()
4
5 sleep 2 &
6 pids+=($!)
7
8 sleep 5 &
9 pids+=($!)
10
11 sleep 4 &
12 pids+=($!)
13
14 timeout 2 sleep 4 &
15 pids+=($!)
16
17 for pid in "${pids[@]}" ; do
18     wait $pid
19     echo $?
20 done
```
2. Skrypt wyswietlajacy zawartosc pliku, ale tylko linie 5-10
3. Skrypt zamieniajacy male litery na duze w liniach zawierajacych cyfry

Instrukcje do zajec (grep)](https://www.digitalocean.com/community/tutorials/using-grep-regular-expressions-to-search-for-text-patterns-in-linux)

[Instrukcje do zajec (awk)](http://www.zsk.iiar.pwr.wroc.pl/zsk/repository/dydaktyka/so/instrukcje/awk1.pdf)
