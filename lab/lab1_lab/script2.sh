#! /bin/bash

for x in $(seq $1 $2); do
    touch plik$x;
done;