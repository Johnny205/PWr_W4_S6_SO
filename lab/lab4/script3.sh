#!/bin/bash
#Skrypt który przyjmuje ścieżkę do katalogu jako parametr oraz bazując na wszystkich plikach w nim się znajdujących (rekursywnie), wyświetla statystykę pokazującą ilości słów występujących w plikach. 

grep -hoEr [a-z]+ | sort | uniq -c | sort -n
