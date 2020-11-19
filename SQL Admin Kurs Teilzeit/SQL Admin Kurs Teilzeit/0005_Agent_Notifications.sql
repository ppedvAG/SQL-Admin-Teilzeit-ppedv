/*

derAdmin@sql.local

--EmailSystem
----->SQL ist SMTP  Client


--Profil: SMTP Server Port  AUth  kennwort absendeadresse

man kann in SQL auch per TSQL Mails versnden sp_send_dbmail 

Nach Aktivierung: Meldung  guest hat recht auf SQLLOCAL


Agent hat noch kein zugriff auf öfftl Profil.. Thema Security



Agent
Auftrag
--wer braucht den Zugriff
Backup auf \\Server25\BACKUPS

--was wäre wenn ich mit SQL Login SA arbeiten würde

--wer machts jetzt..? jetzt mach ich das..! SQL Server Dienst
BACKUP DATABASE [Northwind] TO  DISK = N' \\Server25\BACKUPS\Northwind.bak' WITH NOFORMAT, NOINIT,  NAME = N'Northwind-Vollständig Datenbank Sichern', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO



Fehlermeldungen: Nr oder auch Ebenen

--Ebene 16 --> DAU
--15
--> Ebene 17 ja dann muss man was tun




--Wie bekomme ich Emails?


/*
Exchange / IIS 6 /  Gmail ...SMTP Server 
..falls IIS 6 dann Maildomäne.. Rechte zum Versenden (Relay)


Operator
..Alias für EmailAdresse


DatabaseMail
--> Profil einrichten 
--- Profilanme sollte einfach sein
-- hinter profil verbirgt sich das ganze SMTP Setting

--Agent weiss nicht welches Profil er verwenden soll:
--Eigenschaften des Agwnt.. Warnungssystem---> MAilprofil wählen .. aktivieren..
--Neustart des Agent


SQL Server soll mir etwas mitteilen

Operatoren (Mailadressen, Pager)
--wie Kontaktliste
xyn@sql.local


USer klagt: hab nen Meldung error 3206 Ebene 16
--16?... (DAU).. 
--15?.. (SuperDAU)
--9? .. (wo wohnst du?

--bis 10 Infos
--ab 11 Fehler (14=Security)

--17.. Arbeit
--20.. noch mehr Arbeit
--24 .. muss schnell weg.. Kollegen  holen
--25 .. möglichst ganz wweit weg sein

--SQL soll Mails versenden..
SMTP Client
sqlservice@sql.local

guest auf SQLLOCAL 


--Mailprofil einrichten:

Datenbank Email:

Profil : 

--Untersuche den HV SQL 1 .. ist der in Ordnung?
--Server. Max 2,1 PB
--DB Standardsettings: MAX....Gesamt - OS (2GB-4GB/10%)
--CPU

--Tipp.. auf allen identische Systemumgebung
--HADR: High Availab. Desaster Recover




*/

select  from sysxyz


select * from sysmessages where msglangid=1031 and severity=16