# docker-common

## Sendmail

Zum versenden von E-Mails wird der Standardbefehl ``sendmail`` von Busybox verwendet. Im Verzeichnis ``/usr/local/bin``
befindet sich ein Wrapper, damit mehr Einstellung über Umgebungsvariablen gesetzt werden können.

## GMAIL

Hier ein Beispiel der Umgebungsvariablen, die gesetzt werden müssen, um E-Mails über gmail.com zu versenden.

SMTP_HOSTNAME=smtp.gmail.com
SMTP_AUTH_USERNAME=example@gmail.com
SMTP_AUTH_PASSWORD=$password
SMTP_STARTTLS=yes

Falls E-Mails über den SMTP-Server ``smtp.gmail.com`` versendet werden sollen, so wird ein Konto bei gmail.com und ein
``App-Passwort`` benötigt. Das normale Passwort, dass sonst zum Login verwendet wird, funktioniert hier nicht.
Falls eine G-Suite vorhanden ist, kann auch ``smtp-relay.gmail.com`` ohne persönliche Zugangsdaten verwendet werden
(wurde noch nicht getestet).  

[Mit App-Passwörtern anmelden](https://support.google.com/accounts/answer/185833?hl=de)
[SMTP-Einstellungen zum Senden von E-Mails über Drucker, Scanner oder Apps](https://support.google.com/a/answer/176600?hl=de)

## Umgebungsvariablen

### SMTP_HOSTNAME

Host des SMTP-Servers um E-Mails zu versenden. Im Stack sollte ein Container oder ein externer Alias unter diesem Namen
erreichbar sein. Sollte der SMTP-Server eine Authentifizierung benötigen, so müssen die ``SMTP_AUTH_USERNAME`` und
``SMTP_AUTH_PASSWORD`` gesetzt werden, ansonsten muss der IP-Adressbereich des Containers für das versenden von E-Mails
ohne Authentifizierung erlaubt sein.

Standardwert: smtp

### SMTP_PORT

Port über dem die Kommunikation stattfindet.

Falls SMTP_STARTTLS auf ``yes`` steht wird als Standardwert 587 verwendet, ansonsten 25.

### SMTP_AUTH_USERNAME

Benutzername für die Authentifizierung.

### SMTP_AUTH_PASSWORD

Passwort für die Authentifizierung.

### SMTP_STARTTLS

Soll STARTTLS verwendet werden, so muss diese Umgebungsvariable auf ``yes`` gesetzt werden. Zusätzlich muss das Paket
``openssl`` installiert werden, damit ``sendmail`` verschlüsselte Verbindungen aufbauen kann.

Standardwert: no

