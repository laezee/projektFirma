# DZIEŃ 1

#### Instalacja i wstępna konfiguracja:
- **System**: Debian 12 (bare metal)  - *debian, bo fajny i stabilny*
- **Hostname**: `hal9000` - *wkreciłem się w Odyseję ostatnio*
- **Użytkownicy**:
  - Konfiguracja roota
  - Konfiguracja użytkownika `patryk`

#### Sieć:
```ini
Typ:      Statyczne IP
IP:       192.168.0.110
Gateway:  192.168.0.1
Netmask:  255.255.255.0
```

#### Partycjonowanie:
| Punkt montowania | System plików | Rozmiar  | Przeznaczenie                   |
|------------------|---------------|----------|---------------------------------|
| `/boot/efi`      | FAT           | 512 MB   |                                 |
| `/boot`          | EXT4          | 2 GB     |                                 |
| `SWAP`           | -             | 12 GB    | *(tyle co RAM)*                 |
| `/`              | EXT4          | 150 GB   |                                 |
| `/home`          | EXT4          | 150 GB   |                                 |
| `/srv`           | EXT4          | 50 GB    | *(dane hostowanych usług)*      |
| `/data`          | EXT4          | Reszta   | *(dane wydziałów firmowych)*    |

#### Dodatkowe ustawienia:
- **Mirrory**: Najbliższe geograficznie
- **Środowisko graficzne**: XFCE *bo lekkie - GNOME zamula na tym laptopie, innych nie lubię, a hyprland nie chce mi sie bawic*
- **Usługi**: SSH server + standardowe narzędzia

#### Po pierwszym zalogowaniu:
- Aktualizacja systemu (`update` i `upgrade`)
- Dodanie użytkownika `patryk` do sudoers
- Instalacja pakietów:
  - Docker
  - btop *bo najfajniejsze*
  - Prometheus
  - kitty *żeby działało nano po SSH xd*
  - fail2ban *żeby wykrywać hakerów bandziorów i im dać wciry*
  - snapd *bo chce Spotify i Discord*
- Snapy:
  - Spotify *dla muzyczki*
  - Discord *dla ziomeczków*
- Dodanie klucza SSH z głównego komputera
- Postawienie kontenera `portainer-agent`

#### Bezpieczeństwo:
- **Hardening SSH**:
  - `LoginGraceTime 20`
  - `PermitRootLogin no`
  - `MaxAuthTries 3`
  - `PubkeyAuthentication yes` *ale zostawiam password dla wygody teraz i tak*
  - `PermitEmptyPasswords no`
  - Wyłączone forwardingi (Agent, TCP, X11)
  - `TCPKeepAlive yes` *dla wygody ;C*
- **fail2ban**:
  - `bantime.maxtime = 10mln sekund`
  - Ignorowane IP: główny komputer, telefon, domowy serwer
  - Powiadomienia mailowe

---

# DZIEŃ 2

#### NextCloud - Firmowa Chmura
- Port: `8080:80`
- Konfiguracja:
  - Baza danych
  - Konto admina
  - Dodatkowe widgety
- Wolumeny: główny, apps, config, themes, data
- Test: połączenie z Androida przez DuckDuckGo

#### Strona Firmowa + Statystyki
- **WordPress**:
  - Port: `8082:80`
  - Credentials: `admin:admin` *xd*
  - Problem: *WordPress nie tworzy bazy danych, tylko muszę go podłączyć na gotowe #TODO poduczuc sie sqla*
- **Matomo**:
  - Port: `8083:80`
  - Credentials: `admin:adminadmin`
  - Uwaga: *zbiera dane tylko przez JS (curl/siege nie działają do generowania ruchu, bez dodatkowej konfiguracji)*

#### Baza danych MySQL
- Hasło roota: `supertajnehaslo`
- Utworzone bazy: `strona`, `matomo`

#### Użytkownicy
- Utworzone grupy: `test_group_IT`, `test_group_HR`, `test_group_MARKETING`
- Użytkownicy (`useradd -M`):
  - `test_IT_{1,2,3}`
  - `test_HR_{1,2,3}`
  - `test_MARKETING_{1,2,3}`
- Katalogi:
  - `/data/IT`
  - `/data/HR`
  - `/data/MARKETING`
- Uprawnienia: grupy mają dostęp do odpowiadających katalogów

#### Monitoring
- Prometheus + Grafana
- Test obciążenia: `siege -c 255 -r 100 [IP]:[PORT]`

#### Wiki (Kiwix)
- Port: `8085:8080`
- Zasoby: Arch Wiki i Gentoo Wiki w formacie ZIM

---

## TODO (w nastepnym podejsciu):
- Monitorowanie logów 
- dokładnie to samo, ale przy użyciu ansible :)))

