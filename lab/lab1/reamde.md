# Tematy zadań do laboratorium Systemów Operacyjnych  
## <center>Skrypt nr 1 
Zmiana  nazw  wszystkich  plików  w  zadanym  katalogu  (parametr  wywołania  skryptu),  do  których mamy ustawione prawo zapisu, przez dopisanie dodatkowego członu .old. Wcześniej należy skasować wszystkie pliki, które już mają takie rozszerzenie. 
## <center>Skrypt nr 2 
Tworzenie  nowych  plików  w  zadanym  katalogu  (parametr  wywołania skryptu), według listy umieszczonej  w  pliku  (drugi  parametr  wywołania  skryptu).  Nowe  pliki  mają  być  zerowej  wielkości (puste). Jeżeli jakiś plik już istnieje, to nie powinien zostać zniszczony.
## <center> Skrypt nr 3 
Kasowanie  wszystkich  plików  w  zadanym  katalogu  (parametr  wywołania  skryptu),  poza  plikami wykonywalnymi, mającymi ustawiony bit dostępu typu „execute”. 
## <center>Skrypt nr 4 
Numerowanie  wszystkich  plików  w  zadanym  katalogu  (parametr  wywołania  skryptu),  do  których  mamy  ustawione  prawo  wykonywania    („execute”),  przez  dodanie  dodatkowego  członu  rozszerzenia  o  postaci  .< numer kolejny>.  Numeracja  powinna  przebiegać  według wielkości plików. 
## <center>Skrypt nr 5 
Łączenie w jeden wszystkich plików należących do zadanego katalogu (parametr wywołania skryptu), o zadanym rozszerzeniu (drugi parametr skryptu). Kolejność, w jakiej pliki zostanąpołączone  -  nieistotna.  Treść  każdego  pliku  powinna  być  poprzedzona  nagłówkiem  z  jego  nazwą. 
## <center>Skrypt nr 6 
Łączenie  w  jeden  plików  z  listy,  umieszczonej    w  pliku  o  zadanej  nazwie  (parametr  wywołania  skryptu.  Kolejność,  w  jakiej  pliki  zostaną  połączone  -  ściśle  według  listy.  Treśćkażdego pliku powinna być poprzedzona nagłówkiem z jego nazwą. Plik wynikowy powinien mieć nazwę pliku pierwotnie zawierającego listę. 
## <center>Skrypt nr 7 
Przesuwanie  wszystkich  plików  z  ustawionym  prawem  wykonywania  z  jednego  katalogu  do  drugiego.   Pozostałe   pliki   w   katalogu   nie   powinny   być   ruszane.   Nazwy   katalogów,   źródłowego i docelowego, zadawane jako parametry skryptu.  
## <center>Skrypt nr 8 
Listowanie   plików   z   zadanego   katalogu   (parametr   wywołania   skryptu),   wraz   z   jego   podkatalogami.  Zawartość  podkatalogów  ma  być  listowana  w  postaci  <ścieżkadostępu względem listowanego katalogu>/< nazwa pliku>.  Ograniczyć  liczbę  zagnieżdżeń  podkatalo-gów (np. do dwóch). 
## <center>Skrypt nr 9 
Kasowanie wszystkich plików pustych (o zerowej wielkości) w zadanym katalogu (parametr wywołania  skryptu).  Skrypt  powinien  tworzyć  w  zadanym  pliku  listę  skasowanych  plików.  Nie powinien analizować dołączeń symbolicznych. 
## <center>Skrypt nr 10 
Porównanie  zawartości  dwóch  zadanych  katalogów  (argumenty  skryptu).  Przy  porównaniu  należy ignorować podkatalogi. W wyniku wyświetlić na ekranie listę plików o identycznych nazwach w obu katalogach. 
## <center>Skrypt nr 11 
Porównanie  zawartości  zadanego  katalogu  z  listą  plików  (nazwa  katalogu  i  pliku  z  listązadawana   w   argumentach   skryptu).   Należy   wygenerować   listę   plików   brakujących   w   katalogu i takich, które nie są na liście. 
## <center>Skrypt nr 12 
Usuwanie   wszystkich   podkatalogów   zadanego   katalogu   (parametr   wywołania   skryptu).   Zawartość tych podkatalogów należy przenieść do katalogu nadrzędnego. Usuwanie dotyczy tylko jednego poziomu podkatalogów. 
## <center>Skrypt nr 13 
Usuwanie  z  zadanego  katalogu  (pierwszy  argument  skryptu)  wszystkich  plików,  których  nazwy   pokrywają   się   z   nazwami   w   drugim   katalogu   (drugi   argument).   Nie   usuwaj   podkatalogów.   Nie   usuwaj   również   plików   o   nazwach   pokrywających   się   z   nazwami   podkatalogów w drugim katalogu. 
## <center>Skrypt nr 14 
Ustawienie  na  aktualny  czasu  ostatniej  modyfikacji  wszystkich  plików  zadanego  katalogu  (parametr wywołania skryptu), do których mamy prawo dostępu do zapisu/modyfikacji. 
## <center>Skrypt nr 15 
Policzenie wszystkich plików w zadanym katalogu (parametr wywołania skryptu), do których ustawione jest prawo dostępu do wykonania („execute”).