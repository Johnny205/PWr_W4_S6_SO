#!/bin/bash

# rm -f ./master.zip
# wget https://github.com/google/guetzli/archive/master.zip
# unzip master.zip

# zlicza ilość linii zawierających słówko google
echo "ilość słów google w podanym katalogu: $(grep 'google' -r $1 | wc -l)"

# zlicza ilość pustych linii
echo "ilość pustych linii: $(grep '^$' -r $1 | wc -l)" 

# zlicza ilość niepustych linii
echo "ilość niepustych linii: $(grep '\S' -r $1 | wc -l)" 

# zlicza ilość linii zakończonych średnikiem ;
echo "ilość linii zakończonych średnikiem: $(grep ';$' -r $1 | wc -l)"

# zlicza ilość linii zawierających tylko 2 znaki
echo "ilość linii zawierających tylko dwa znaki: $(grep '^..$' -r $1 | wc -l)"

# zlicza  ilość linii nie zawierających cyfr 0-9 oraz podkreślników_
echo "ilość linii nie zawierających cyfr 0-9 oraz podkreślników_: $(grep '[0-9]\|[_]*' -r $1 | wc -l)"

# zlicza ilość linii zawierających dokładnie dwie kropki obok siebie. Przykładowa linijka pasująca do wzorca: // x - offset .. x + square_size - offset - 1,
echo "ilość linii zawierających dokładnie dwie kropki obok siebie: $(grep '[\.\{2\}]' -r $1 | wc -l)"

# zlicza ilość linii zawierających liczby hexadecymalne. Przykładowe liczby hexadecymalne: 0xff9900 lub 0xFF9900
echo "ilość linii zawierających liczby hexadecymalne: $(grep '0x[A-F0-9][A-F0-9][A-F0-9][A-F0-9][A-F0-9][A-F0-9]' -r $1 )"

# zlicza ilość linii zakończonych trójliterowym rozszerzeniem pliku. Przykładowa linijka pasująca do wzorca: BEES_PNG=$(dirname $0)/bees.png
echo "ilość linii zakończonych trójliterowym rozszerzeniem pliku: $(grep -r '\.[a-z][a-z][a-z]$' | wc -l)"

# zlicza ilość klas class
echo "ilość klas class: $(grep '^class' -r $1 | wc -l)"











 

 