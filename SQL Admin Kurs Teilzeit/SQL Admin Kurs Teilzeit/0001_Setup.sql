13:30
15 Uhr 15 min   ca..17:00


AndreasR@ppedv.de
----------------------

Larissa:  Grundkenntnisse... admin; 
G�nther:  Admin; TSQL



Version bzw Edition:
SQL 2017 ( >= SQL 2016 Sp1) STD


Teil 1 
SETUP

Security
welche Art von Login... 

NT oder dazu SQL Auth (inkl NT Login
				gemnischte Auth
				NT Auth
�
Standard Admin: SA  (Vollzugriff)
Tipp: Kennwort: 17 Zeichen komplex
Tipp: sa sp�ter deaktivieren

NT Administratoren sind keine SQL Admins mehr (User oder Gruppen)





Dienste und deren Konten
SQL Server (Datenbankmodul)
SQL Server Agent (Jobs, Auftrag, Email, Wartung)
SQL Browser
SQL Volltextsuche

Egal, wer was tut.. bei allen Zugriffen nach draussen (ausserhalb des SQL ) arbeitet immer das Dienstkonto

Domainuser..braucht keine weiteren Rechte
NT Service\MSSSQLSERVER
NT Service\....   verwaltete Dienstkoten (Lokal System, aber kein Netzwerkzugriff), NETZWERKDIENST; )..lokale Dienstkoten, aber mit sehr komplexeen Kennwort, autom. Kennwort�nderungen
			arbeitet im Netz mit Computerkonto

Bei uns....
svcAgent
svcSQL



Pfade
Regel:  Trenne Daten von Logfiles
Bin�rkram (exe...) ..egal..

Frage nach: 
SystemDB
Benutzerdatendatendatei  eig HDD
Benutzerdatenbankprotokolldateien  eig HDD

Frage nach tempdb Explizit
evtl mind 1 weitere HDD

Tipp: jede DB kann eig HDDs haben.. sogar eine tabelle kann 15000 HDDs haben



Pfaden f�r TEMPDB

temp Tabellen #tab, Zeilenversionierung, IX Wartung
tempdb kann die "schlimmste DB" sein..

evtl eig. Pfade f�r die Tempdb (mdf und ldf)


Instanz-Features
merfache Installation.. ca 24 
Warum? aus Sicherheitsgr�nden   <--> SA
       wg Software mag andere Version

Freigebene Feature
..die man nur einmal installieren muss...




Datenbanken bestehen normalerweise aus

 2 Dateien:
.mdf Datei (master Data File)
.ldf Datei (log Data File)


Virtualisierung:

VM ..keinen dynamischen Speicher f�r SQL VMs
CPU -> NUMA -> Layout identisch mit tats. Hardware




Instanzen




Standardinstanz:

Aufruf per  <PCNAME>  STdPort: 1433
(MSSQLSERVER)

weiter Instanzen (ROM)
 Aufruf per <PCNAME>\Instanzname   PC25\ROM
			Port: ??? Randomport	

MSSQL$ROM	


































