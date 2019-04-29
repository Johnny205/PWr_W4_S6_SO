#!/bin/bash

#wget http://ftp.gnu.org/gnu/coreutils/coreutils-8.27.tar.xz
#tar Jxf coreutils-8.27.tar.xz

#wyświetla liczbę wszystkich katalogów
counter=0
for i in $(find $1 -type d);
do
    let counter=counter+1
done

echo "liczba wszystkich katalogow: $counter"

#wyświetla liczbę wszystkich plików o rozszerzeniach .sh oraz .pl
let counter=0
for i in $(find $1 -type f -name "*.sh");
do
    let counter=counter+1
done

for i in $(find $1 -type f -name "*.pl");
do
    let counter=counter+1
done

echo "liczba wszystkich plikow .sh i .pl: $counter"

#wyświetla liczbę wszystkich plików które mają w ścieżce katalog src
let counter=0
for i in $(find $1 -type f ! -name "b*");
do
    let counter=counter+1
done
echo "liczba plikow niezaczynajacych sie na 'b': $counter"

#wyświetla liczbę wszystkich plików których nazwa nie zaczyna się na literę b
let counter=0
for i in $(find $1 -path "*/src/*" -type f ! -name "b*");
do
    let counter=counter+1
    #echo $i
done
echo "liczba plikow majacych src w pathie: $counter"

#wyświetla liczbę wszystkich plików .c większych niż 100KB
let counter=0
for i in $(find $1 -type f -name "*.c" -size +100k);
do
    let counter=counter+1
done
echo "liczba plikow .c wiekszych niz 100KB: $counter"