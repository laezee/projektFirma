Cel:

Skonfigurowanie serwera domowego.

Docelowe uslugi:
	- Jellyfin
	- Trilium Notes - serwer glowny
	- Serwer MC
	- Nextcloud - Domowa chmura
	- NAS

Implementacja:

	Ze starych czesci zlozylem mini serwerek.
	CPU: i7-6800
	GPU: BRAK (dokupic do transkodowania)
	MB: z170a
	RAM: 2x16GB (chyba) 2400Mhz
	PAMIEC: 
		- System -> 256GB SSD
		- 1x 160GB HDD - odrzut ze starego lapka - nie ufam
		- 1x 512GB HDD - tak samo
		- 2x WD RED 4TB HDD -> na ZFS

	Chce, zeby ten system byl prosty i przyjemny w obsludzie, wiec uzyje archa.
	Kernel chce LTS, bo nie chce osiwiec. Serwer ma byc stabilny, wiec rolling release bylby debilizmem.
	Wylacze niepotrzebne uslugi jak w podejsciu 2 + gdzie sie da tam uzyje kontenerow, bo nie narobia przypalu.
	Musze jednak zaczac ogarniac logi + wdrozyc w zycie to czego sie nauczylem z basha + SED <3 i AWK <3 + xargs <3/
	Wczoraj tez poznalem smak nieodpowiedzialnego rm -rf <- fuck me, wiec musze miec to z tylu glowy. xd
	
	DZIEN 2.

		Skonfigurowalem system i podstawowe pakiety. Nie chcialo mi sie juz wczoraj tego dokumentowac i poszedlem spac.
		- System Linux - Arch - kernel lts
		- Zamontowalem dwa dyski, ktore wczoraj przyszly - Zrobilem pule ZFS - obecnie bez redundancji - Jak dokupie nowe dyski to zrobie RAIDz.
		- Zainstalowalem potrzebne pakiety
		- Postawilem NextCloud + konta dla rodziny + dodalem dla kazdego pliki
			- TODO SEGREGACJA
			- TODO CRON OCC
		- Postawilem JellyFin + konta dla rodziny + podzial na biblioteki + metadata itd.
			- TODO DODAWAC NA BIEZACO

		NextCloud i JellyFin maja mieszanke wolumenow dockera i zwyklego bindowania do systemu plikow.
		Confingi, themes etc. pierdoly sa w osobnych wolumenach, a pliki multimediow i prywatne sa jako zbindowane.
		
		TODO DZISIAJ:
		- CRON OCC NEXTCLOUD
			Zainstalowalem cronie, service enabled i started. Dodam do daily polecenie, zeby o 00:00 wykonywalo w kontenerze occ files:scan --all, bo be tego
			pliki, ktore dodaje do zbindowanego folderu nie pokazuja sie w webowej apce nextcloud. Chociaz w sumie zalezy. Moze jest sposob, by aktywowac to tylko
			jak sie zmieni cos w systemie plikow. Moznaby w sumie napisac skrypcik, ktory uzywajac du sprawdza czy nie zmienila sie ilosc zapisanych danych
			i jezeli tak to odpalala occ. Oczywiscie tylko jesli occ nie robi full rescan, a tylko szuka nowych plikow. Na chwile obecna 90GB przeskanowal w 11min,
			nawet zakladajac. Dobra - w manualu jest opcja, zeby dac --unscanned co skroci czas + wielokrotny rescan plikow podobno prowadzi do ich degradacji.
			Musze wiecej o tym doczytac, ale na razie pliki priorytet 2 trzymam po prostu na dysku, a pliki priorytet "kop w dupe jak znikna" trzymam dalej w 3 kopiach.
			Dopoki nie bede mial 4 dyskow + RAIDz + snapshoty to paranoja to najzdrowsze podejscie. Poza tym wtedy i tak chce 3 kopie tak jak bog przykazal.
			1. Online 2. Offline 3. Offline + out of perimeter.

			Rany boskie, dziala.
			Chcialem wlaczyc cronjob wewnatrz kontenera, ale mnie to pokonalo. Ustawilem cronjob jako root na glownym systemie
			/5 * * * * docker exec -u root NextCloud php /var/www/html/occ files:scan --all --unscanned >> /var/log/nextcloud_rescan.log 2>&1 && echo czw, 3 kwi 2025, 17:08:51 CEST - SCAN END >> /var/log/nextcloud_rescan.log
			Robi rescan co 5 minut + zapisuje logi w /var/log/nextcloud_rescan.log

		- SEGREGACJA NEXTCLOUD
			Ehh. Here we go. Ide zrobic KAWUSIE i sie za to zabieram. Zebralem tam pliki z roznych urzadzen (niektore nawet z 2011 LOL) i wszystko jest pomieszane.
			musze to ladnie posegregowac tematycznie, zeby bylo senior-friendly.
			UPDATE: Od UI dla plikow w NextCloud dostaje SMYRGLA (jak yeti). Podlacze sobie caly serwer przez sshfs do glownego kompa i tak sie bede z tym bawil.
			UPDATE2: Rany boskie, zachcialo mi sie rolling release... Musze zrobic update (bo sobie folgowalem CALE TRZXY DNI), zeby zainstalowac sshfs. Znaczy nie musze, ale
			ile mozna to odkladac lol. Z innej beczki - JellyFin cudowne jak zawsze. Jakbym spotkal na zywo tych co stworzyli to cos to bym do nich zamaszyscie podszedl, uscisnal
			ich dlonie i powiedzial "I APPRECIATE YOUR WORK, GUYS. IT'S REALLY INCREDIBLE." Jakby nie znali angielskiego to bym poswiecil lata na nauke ich jezyka, az do bieglosci
			i powiedzial im to w ich ojczystym jezyku. Z innej beczki - po wznowieniu Futurama nie trzyma poziomu. Pierwsze sezony bylem zafascynowany, a 8 sezon to takie 4-6/10 - 
			zaleznie od odcinka. 
			UPDATE3: Skonczylem... 

		- JELLYFIN UPDATING
		- SSH HARDENING - DONE
		- FAIL2BAN - DONE, ale jestem na siebie zly. Debilem sie trzeba urodzic, nas nie sieja lol. Ale dziala przynajmniej...
			- TODO Rozszerzyc na NextCloud i Jellyfin. Na razie tylko SSHD.
		- POSTAWIC SERWER TRILIUM NOTES - JUZ NIE DZISIAJ

	DZIEN 3.
	
	TODO DZISIAJ:
		- FAIL2BAN
			- JellyFin
			- NextCloud
		- Serwer Trilium Notes
		- Serwer kiwix
			- Archpedia
			- Gentoopedia
			- Pobrac wikipedia ENG
		- Serwer qbittorrent
		- Migracja plikow


