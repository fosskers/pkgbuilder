��    A      $  Y   ,      �  �  �         �     �  >   �     �  �   �     �	     
     !
     (
      6
  �   W
     L  &   k  �   �  �   n           (  !   I     k     �  +   �     �  )   �     �        &   6  "   ]  %   �  ,   �  �   �     p  1   �  #   �  "   �  %     1   -  #   _     �      �  D   �  =   �  J   5  2   �     �     �     �     �     �  
   �  	   �       2        F  ;   a     �     �     �     �     �     �     
       L  <    �    �     �     �  Q   �     $  �   5     5     Q     i     q  #   �  �   �  !   �  /   �  �   �  �   �     �     �      �  #        ,  @   8     y  1   �     �  %   �  +   �  #   #  '   G  <   o  �   �     >  8   ]  &   �  $   �  5   �  +      &   D      k   %   y   1   �   %   �   =   �      5!  
   T!     _!     z!     �!     �!     �!     �!     �!  &   �!  &   �!  ,   "     J"  &   b"  !   �"     �"     �"     �"     �"  )   �"     -   
         ?   !   )   "       ;          @             =                       (                           6   5      7                        8      >   *       2   1   3                /   :          &   0      A   $                  '   9          ,   <       %       .                 	   +   #                  4    

Read the above output.  If the script had any problems, run it
again.  You can also try to debug the work of this script yourself.
All the files this script was working on are placed in
    {0}
(the number is random).

If everything went fine, though, congratulations!  You can now use
PKGBUILDer.  For standalone usage, type `pkgbuilder` into the prompt
(zsh users: hash -r, other shells may need another command).  For
python module usage, type `import pkgbuilder` into the python prompt.
 

Something went wrong.  Please read makepkg's output and try again.
You can also try to debug the work of this script yourself.
All the files this script was working on are placed in
    {0}
(the number is random).

If I am wrong, though, congratulations!
  [installed: {0}]  [installed] An AUR helper/library.  Wrapper-friendly (pacman-like output.) Building {0}… Category       : {cat}
Name           : {nme}
Version        : {ver}
URL            : {url}
Licenses       : {lic}
Votes          : {cmv}
Out of Date    : {ood}
Maintainer     : {mnt}
First Submitted: {fsb}
Last Updated   : {upd}
Description    : {dsc}
 Checking dependencies… Downloading the tarball… ERROR: Extracting… Gathering data about packages… Hello!

PKGBUILDer is now available as an AUR package.  It is the suggested
way of installing PKGBUILDer.  This script will download the AUR
package and install it.  If you will have problems, please download
and compile the package manually.

 Hit Enter/Return to continue.  Installing missing AUR dependencies... It looks like you want to quit.  Okay then, goodbye.
All the files this script was working on are placed in
    {0}
(the number is random).

If that's what you want to do, go for it.  If it isn't, run this
script again. It looks like you want to quit.  Okay then, goodbye.
No work has been started yet.

If that's what you want to do, go for it.  If it isn't, run this
script again. Package {0} not found. Performing a dependency check... Proceed with installation? [Y/n]  Searching for exact match… Targets ({0}):  The build function reported a proper build. WARNING: You can use pacman syntax if you want to. [ERR1001] AUR: HTTP Error {0} [ERR3001] Package {0} not found. [ERR3101] download: 0 bytes downloaded [ERR3102] download: HTTP Error {0} [ERR3151] extract: no files extracted [ERR3201] depcheck: cannot find {0} anywhere [ERR3202] depcheck: UnicodeDecodeError.  The PKGBUILD cannot be read.  There are invalid UTF-8 characters (eg. in the Maintainer field.)  Error message: {0} [ERR3301] makepkg returned 1. [ERR3401] Building more AUR packages is required. [ERR3451] validation: NOT installed [ERR3452] validation: outdated {0} [ERR5001] Aborted by user! Exiting… [ERR5002] search string too short, API limitation [INF3450] validation: installed {0} [out of date] chooses protocol (default: http) don't                         check dependencies (may break makepkg) don't                         install packages after building don't check                         if packages were installed after build don't use                         colors in output found found in repos found in system found in the AUR no none found not found packages to build pacman                         syntax compatiblity pacman syntax compatiblity search the                         AUR for matching strings there is nothing to do upgrade installed AUR packages view package information votes yes {0} files extracted {0} kB downloaded {0} upgradeable packages found: Project-Id-Version: 2.1.2.31
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2011-10-22 10:16+0100
PO-Revision-Date: 2012-07-27 14:20+0100
Last-Translator: Kwpolska <kwpolska@kwpolska.tk>
Language-Team: Kwpolska <kwpolska@kwpolska.tk>
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 

Przeczytaj powyższe wyjście.  Jeśli skrypt miał problemy, spróbuj
jeszcze raz.  Możesz też spróbować samodzielnie debugować pracę skryptu.
Wszystkie pliki, nad którymi ten skrypt pracował, znajdują się w
    {0}
(liczba jest losowa).

Jeśli wszystko się udało, gratulacje!  Teraz możesz używać PKGBUILDer-a.
Dla użycia samodzielnego, wpisz `pkgbuilder` do terminala (zsh: hash -r,
inne powłoki mogą wymagać innej komendy).  Dla użycia jako moduł
Pythona, wpisz `import pkgbuilder` do interpretera.
 

Coś się popsuło.  Przeczytaj to, co wypisał makepkg i spróbuj ponownie.
Możesz też próbować debugować pracę tego skryptu samemu.
Wszystkie pliki, nad którymi ten skrypt pracował, znajdują się w
    {0}
(liczba jest losowa).

Jeśli się mylę, gratulacje!
  [zainstalowano: {0}]  [zainstalowano] Biblioteka/pomocnik AUR.  Przyjazna dla wrapperów (wyjście podobne do pacmana.) Budowanie {0}... Kategoria      : {cat}
Nazwa          : {nme}
Wersja         : {ver}
URL            : {url}
Licencje       : {lic}
Głosy          : {cmv}
Nieaktualny    : {ood}
Opiekun        : {mnt}
Wysłany        : {fsb}
Ost. aktualiz. : {upd}
Opis           : {dsc}
 Sprawdzanie zależności… Ściąganie tarballa… BŁĄD: Wypakowywanie… Zbieranie informacji o pakietach… Cześć!

PKGBUILDer jest teraz dostępny jako pakiet w AUR.  Jest to polecany
sposób instalacji PKGBUILDer-a.  Ten skrypt pobierze pakiet z AUR i go
zainstaluje.  Jeśli będziesz miał problemy, pobierz i skompiluj pakiet
ręcznie.

 Wciśnij Enter, aby kontynuować. Instalowanie brakujących zależności z AUR… Wygląda na to, że chcesz wyjść.  Okej, do widzenia.
Wszystkie pliki, nad którymi ten skrypt pracował, znajdują się w
    {0}
(liczba jest losowa).

Jeśli to jest to, co chcesz zrobić, proszę bardzo.  Jeśli nie,
uruchom ten skrypt jeszcze raz. Wygląda na to, że chcesz wyjść.  Okej, do widzenia.
Żadne prace nie zostały jeszcze rozpoczęte.

Jeśli to jest to, co chcesz zrobić, proszę bardzo.  Jeśli nie,
uruchom ten skrypt jeszcze raz. Nie znaleziono pakietu {0}. Sprawdzanie zależności… Kontynuować instalację? [Y/n]  Szukanie dokładnego dopasowania... Cele ({0}): Funkcja budowania paczek powiadomiła o prawidłowym zbudowaniu. UWAGA: Jeśli chcesz, możesz używać składni pacmana. [ERR1001] AUR: Błąd HTTP {0} [ERR3001] Nie znaleziono pakietu {0}. [ERR3101] download: ściągnięto 0 bajtów [ERR3102] download: Błąd HTTP {0} [ERR3151] extract: wypakowano 0 plików [ERR3201] depcheck: nie można nigdzie znaleźć pakietu {0} [ERR3202] depcheck: UnicodeDecodeError.  Nie można przeczytać PKGBUILD.  Znajdują się w nim nieprawidłowe znaki UTF-8.  Treść błędu: {0} [ERR3301] makepkg zwrócił 1. [ERR3401] Należy zainstalować więcej pakietów z AUR. [ERR3451] walidacja: NIE zainstalowano [ERR3452] walidacja: nieaktualne {0} [ERR5001] Przerwane przez użytkownika! Kończenie... [ERR5002] ciąg zbyt krótki, limitacja API [INF3450] walidacja: zainstalowane {0} [nieaktualny] wybiera protokół (domyślnie: http) nie sprawdza zależności (może popsuć makepkg) nie instaluje pakietów po zbudowaniu nie sprawdza czy pakiety zostały zainstalowane po zbudowaniu nie używa kolorów na wyjścu znaleziono znaleziono w repozytoriach znaleziono w systemie znaleziono w AUR nie brak nie znaleziono pakiety do zbudowania kompatybilność ze składnią pacmana kompatybilność ze składnią pacmana przeszukuje AUR według pasujących ciągów nie ma nic do zrobienia uaktualnia zainstalowane pakiety z AUR wyświetla informację o pakiecie głosów tak wypakowano {0} plików ściągnięto {0} kB Znaleziono {0} pakietów do aktualizacji: 