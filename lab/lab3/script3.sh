#!/bin/bash
#5. Napisać skrypt wyświetlający zawartość pliku podanego przez parametr `$1`
#z ponumerowanymi liniami, ale tylko o numerach 20-30 (`cat`, `nl`, `head`, `tail`)
#for i in {1..50}; do echo "line$i" >> lines; done;

head -19 $1; 
sed -n '20,30p' $1 | nl -v 20;
sed -n '1,30!p' $1;