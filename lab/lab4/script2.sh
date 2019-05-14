#!/bin/bash
#Skrypt wyswietlajacy zawartosc pliku wraz z numerami linii np:
awk '{print NR "," $0}' $1

#Skrypt wyswietlajacy zawartosc pliku, ale tylko linie 5-10
awk '{if(NR>4 && NR<11) print NR  $0}' $1

#Skrypt zamieniajacy male litery na duze w liniach zawierajacych cyfry
awk '{if($NR ~ /[0-9]+/) print NR toupper($0) }' $1

grep -hoEr '[a-z]+' | sort | uniq -c | sort -n