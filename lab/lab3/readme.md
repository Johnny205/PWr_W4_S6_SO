# Tematy zadań do laboratorium Systemów Operacyjnych  

1. Pobrać paczkę do testów: `wget http://ftp.gnu.org/gnu/coreutils/coreutils-8.27.tar.xz`
2. Rozpakować: `tar Jxf coreutils-8.27.tar.xz`
3. Napisać skrypt który przyjmuje ścieżkę do katalogu jako parametr oraz wykonuje na nim następujące akcje (każda za pomocą jednego `find` w potoku z `wc`):
  * wyświetla liczbę wszystkich katalogów
  * wyświetla liczbę wszystkich plików o rozszerzeniach `.sh` oraz `.pl`
  * wyświetla liczbę wszystkich plików które mają w ścieżce katalog `src`
  * wyświetla liczbę wszystkich plików których nazwa **nie** zaczyna się na literę `b`
  * wyświetla liczbę wszystkich plików `.c` większych niż 100KB
4. Napisać skrypt sortujący kolumnę liczb zawartą w pliku podanym przez parametr `$1` od najmniejszych do największych (`cat`, `sort`)
5. Napisać skrypt wyświetlający zawartość pliku podanego przez parametr `$1` z ponumerowanymi liniami, ale tylko o numerach 20-30 (`cat`, `nl`, `head`, `tail`)
6. Napisać skrypt filtrujący listę procesów tak aby pokazane zostały tylko procesy aktualnego użytkownika (`ps -elF`, `grep`, `whoami`)