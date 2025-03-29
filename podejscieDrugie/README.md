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
	
	

