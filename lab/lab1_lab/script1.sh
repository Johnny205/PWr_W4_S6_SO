#! /bin/bash

rm -f *.jpg;

for file in $(cat zad1.txt); do
    wget $file -q
    echo $file
done;