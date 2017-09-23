# docker-common

## Sendmail

### SMTP_HOST

Host des SMTP-Servers um E-Mails zu versenden. Im Stack sollte ein Container oder ein externer Alias unter ``smtp``
erreichbar sein und den Versand von E-Mails ohne Authentifizierung von der IP-Adresse des Containers erlauben. Sollte
eine Authentifizierung benötigt werden, so muss ``SSMTP`` verwendet werden.`

Standardwert: smtp

## SSMTP

Sollte ``sendmail`` von alpine nicht ausreichend sein, so kann ``ssmtp`` installiert werden. Im ``entrypoint`` sollte
dann bei jedem Start des Containers ``ssmtp-setup`` aufgerufen werden, damit folgende Umgebungsvariablen in die
Konfigurationsdatei /etc/ssmtp/ssmtp.conf übernommen werden.

### SMTP_HOST

Hostname zum SMTP-Server.

Standardwert: smtp

### SMTP_AUTH_USER

Benutzername für die Authentifizierung.

### SMTP_AUTH_PASS

Passwort für die Authentifizierung.

### SSMTP_FROM_OVERRIDE

Falls ``SSMTP_FROM_OVERRIDE`` auf ``yes`` steht, kann der Absender überschrieben werden.
