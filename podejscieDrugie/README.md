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
	
	- Instalacja Fedora 41
	- Uzytkownicy - root, admin, uprawnienia
	- Siec
	- SSH - konfiguracja i hardening
	- Fail2ban - konfiguracja/harening
	- Wylaczenie niepotrzebnych uslug i serwisow.
	- Ustawienie regul sieciowych
	- Instalacja potrzebnego oprogramowania
		- docker
		- btop
		- prometheus
	- to co wyzej, ale w playbooku

	2. DZIEN 2
	Zaplanowanie co ma serwer posiadac i dlaczego (w sensie uslugi). Wdrozenie potrzebnych
	uslug i ich konfiguracja.
