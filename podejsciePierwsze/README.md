# PROJEKT: FIRMA #1

## 1. Koncept
Testowe środowiska symulujące prosty serwer firmowy. Podejscie #1
Szczegolowe informacje w pliku podejsciePierwszeOPIS.md

## 2. Wykonane czynnosci

	- instalacja systemu ubuntu server i konfiguracja
		- uzytkownik root i admin
		- uzytkownicy testowi (dzialy IR, HR, MAARKETING)
		- siec
		- partycjonowanie
		- mirrory
		- DE
		- aktualizacja
	- uslugi
		- ssh + hardening (nieudolny - do nauki - projekt 2) + logowanie kluczem
		- fail2ban + hardening (-||-)
		- snapd
			- spotify
			- discord
		- monitoring
			- btop
			- prometheus + grafana
			- logi - brak (do nauki - projekt2)
		- wirtualizacja
			- docker
			- portainer agent
		- uslugi firmowe
			- nextcloud - chmura
			- wordpress - strona
			- mysql - baza danych - (poduczyc sie)
			- matomo - statystyki o stronie
			- kiwix - firmowe offline wiki

## 3. Wnioski

	1. Hardening wykonany nieudolnie. Do nauki:
		- SSH
		- FAIL2BAN
		- SELINUX
		- SECURITY
	2. Planowanie nieudolne
		Dzialalem bez poczatkowego planu. Chcialem po prostu stworzyc serwer. To mialo
		konsekwencji, ktore w realnym srodowisku stanowiliby zagrozenie.
		- Zero GUI - dostep zdalny
		- System minimalny - Jesli cos nie jest uzywane to nie ma prawa tego byc - eliminacja wektorow ataku.
		- Przed deployment'em nalezy przemyslec zastosowanie serwera i czy fine-tunning moglby byc korzystny
	3. Wnioski dalsze
		- RTFM
		- Cutting-Edge ogolnie nie jest wskazany. Liczy sie stabilnosc. Wyjatkiem sa security patche.
		- Wazny jest backup zasilania i zabezpieczenia przeciwprzepieciowe.
		- Srodowisko musi byc chlodne, suche i zamkniete za drzwiami. Nalezy bic nieznajomych i niszczyc im penrive'y jak sie zblizaja do serwera.
		- ubuntu to gowno

## 4. Dalsze kroki

	1.  Dalsza nauka administracji systemem Linux
	2.  Dalsza nauka o bezpieczenstwie
		- ssh
		- logi
		- firewall
		- ataki
		- selinux
		- fail2ban
	3.  Przeniesienie sie na fedora server 41 do podejscie#2
	4.  Okreslenie zastosowania, potrzeb i serwisow, ktore serwer ma posiadac - PRZED deploymentem.
	5.  Nauka ansible albo terraform - szybciej, wygodniej, powtarzalne, skalowane i kozackie
	6.  Nauka mySQL
	7.  Dalsza nauka o networkingu (1. przydatne 2. chce CCNA)
	8.  Musze skupic sie na monitorowaniu logow
	9.  OBOWIAZKOWO (***** mac) - awk, sed i ogolnie regex - bez tego to jak bez nogi
	10. Zaczac pisac bardziej rozbudowane skrypty w bashu i pythonie
	11. Poszerzyc wiedze o C.
	12. Wiecej grzechow nie pamietam
