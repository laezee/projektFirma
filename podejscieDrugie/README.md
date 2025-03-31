Storyline:

	Podejscie drugie chce zaczac od tego, czego brakowalo w podejsciu pierwszym: planu.
Na samym poczatku musze okreslic co nalezy zrobic i dlaczego. Chce stworzyc serwer firmowy,
ktory obsluguje wielu uzytkownikow jednoczesnie i oferuje uslugi, ktore sa potrzebne w wiekszosci firm.
Chce rowniez zadbac o bezpieczenstwo tego serwera.

Plan dzialania:

	1. DZIEN 1
	Skupienie sie wylacznie na kwestii systemu. Zobaczenie co dziala, co nie dziala, co ma 
	dzialac, co ma nie dzialac, co potrzeba, konfiguracja i bezpieczenstwo. Stworzenie
	fundamentu, na ktorym mozna dopiero cos budowac. Nauka ansible.
	
	- Instalacja Fedora 41 - DONE
	- Uzytkownicy - root, admin, uprawnienia - DONE
	- Siec - DONE
	- SSH - konfiguracja i hardening - DONE
	- Fail2ban - konfiguracja/harening - DONE
	- Wylaczenie niepotrzebnych uslug i serwisow. - NOT DONE (zainstalowalem z ciekawosci budgie, bo nigdy nie uzywalem, wiec jest bloated i sa smieci)
	- Ustawienie regul sieciowych - TODO DZIEN 2
	- Instalacja potrzebnego oprogramowania - DONE
		- docker
		- btop
		- prometheus
	- to co wyzej, ale w playbooku - TODO


	Dzisiaj zrobilem mniej niz chcialem, bo walczylem na glownym kompie z vagrantem troche, sadzilem papryke i inne takie + walczylem z yt-dlp ;cc
	Na szczescie, nie jestem jeszcze spiacy, wiec moge smialo szalec dalej :))

	2. DZIEN 2

	Postawilem portainer_agent, ale selinux wysyla mi alert i blokuje. AVCdenial. Czas na troubleshooting.
	Trzeba dodac flage --privileged przed postawieniem kontenera. Tylko teraz nie wiem czy to nie jest przypal.
	Musze ogarnac seLINUX koniecznie

	Dobra, koniec pitolenia. Serwer ma miec:
	- NFS
	- Serwer Logow
	- Chmure

	I usuwam budgie, bo mi sie nie podoba. Wole headless. Ciekawe, ze sie nie wysypalo jak odinstalowalem budgie.
	Pewnie mialo dane w RAMie. Obejrze sobie film o DJ Ware o seLINUX.
	Lol - zostal greeter. Tez musze go usunac. 
	Dobra - ni mo juz lightdm.


	3. DZIEN 4

	Rozchorowalem sie i spedzilem ostatnie dni lezac w lozku, sluchajac audiobooka i spiac. To byl dobry czas, ale pora powrocic do roboty.
	Dzisiaj spoko byloby zajac sie logami i monitorowaniem zdalnym kompa.
	1. prometheus + grafana
	2. logi - TODO DZIEN 5

	Dzisiaj pobawie sie z sed, bo juz dostaje SMYRGLA (jak yeti). Nie bede jak malpiszon recznie zmienial nazw plikow. Text Processing i bash scripting to moje kule u nogi.
	Czas sie nauczyc.
	Brb
	
	4. DZIEN 5

	Spedzilem duuuzo czasu na zabawie z sed i awk. Pozmienialem nazwy okolo tysiaca plikow -
	od ksiazek i audiobookow, przez filmy do filmow z yt. To jest hiperdupersuper przydatne.
	sed, awk i xargs to cuda, ktore powinny wielbic pokolenia przez nastepne tysiaclecia.
	Dzisiaj jednak zamiast bawic sie z ten symulowany serwer to porobilem rzeczy na swoim.
	Okazalo sie, ze mam wolne ok. 300GB przestrzeni jak porobie pewne fiku miku, wiec
	zabralem sie za segregowanie posiaanych plikow. 
	Mam juz te skrypt, ktory - automatycznie reformatuje nazwe, tworzy dir i przenosi tam
	odpowiednie pliki. #Stonks
	W koncu tez sie w domu przyjelo Jellyfin - mimo gadania, ze na co komu takie cos.
	Okazuje sie, ze jak sie wysypie gruzowy internecik to nagle sie oplaca miec wlasna
	kolekcje lol xd
	Pytalem sie czy by nie chcieli, zebym na starym gruziku (jakis notepad) postawil serwer 
	drukowania, ale odpowiedz taka jak zawsze. Czyli trzeba postawic i po prostu poczekac
	na "a nie mowilem" xd 	
	
	5. DZIEN 6
	Dobra. Skonczylem. Jest headless, jest odchudzony, dziala SELinux (to do glebszej nauki).
	Dziala NFS, dziala monitoring, dziala chmura. Nie robilem nic z logami (oprocz czytania).



Wnioski:

	Wiecej basha, wiecej manipulowania tekstem, wiecej SELinux, wiecej wszystkeigo.
	Zamiast robic trzeci serwer musze teraz zajac sie swoim domowy, bo jutro juz bede mial dyski.
	Czas powalczyc z nazwami plikow + wszystkie pliki
