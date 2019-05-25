# Tematy zadań do laboratorium Systemów Operacyjnych  

Napisać następujące skrypty w języku python (wersja 2 lub 3 wedle uzniania):

1. Wyświetlający `PID` aktualnego procesu.

2. Wyświetlający zawartość zmiennej środowiskowiej `PWD`.

3. Wyświetlający zawartość (pliki i katalogi) bieżącego katalogu.

4. Wyświetlający zawartość (pliki i katalogi) katalogu podanego jako pierwszy argument skryptu. Dodatkowo, obok nazw plików/katalgów powinien pojawić się ich rozmiar w bajtach.

5. Wyświetlający **rekursywnie** (`os.walk`) zawartość (tylko pliki) katalogu podanego jako pierwszy argument skryptu.

6. Zmieniający prawa dostępu do pliku podanego jako pierwszy argument skryptu na `rwxrwxrwx`.

7. Tworzący katalog a w nim `100` plików o różnych nazwach (np `plik1`, `plik2` itp.).

8. Zmieniający nazwy wszystkich plików (z `NAZWA_PLIKU` na `NAZWA_PLIKU.copy`) w katalogu podanym jako pierwszy argument skryptu.

Napisać następujące skrypty powłoki BASH:

1. Ustawiąjący zmienną środowiskową `XYZ` z poziomu BASHa oraz wyświetlający jej zawartość za pomocą skryptu *inline* w języku python (`python -c [KOMENDA]`).


# Materiały

[Instrukcje do zajec (os)](https://docs.python.org/2/library/os.html)

[Instrukcje do zajec (sys/argv)](http://www.pythonforbeginners.com/argv/more-fun-with-sys-argv)
