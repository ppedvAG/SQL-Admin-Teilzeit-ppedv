
Verwaltung--> Database Mail aktivieren
Unter Angabe von SMTP Zugangsdaten

Tipp: 
Profilnamen einfache Form (ohne Sonderzeichen), da dieser oft in 
SQL Statements verwendet wird


Öffentliches Profil: Alle die in der Rolle Databasemailuser Role enthalten sind 
dürfen Öffentliche Profile verwenden

Private Profile. 
Das Recht wird direkt einem Benutzer (der msdb) zugewiesen

Hinweia: Emailsystem ist Sache der msdb!



Agent soll Mail versenden:

Agent Eigenschaften: Warnungssystem aktivieren... Mailprofil aktivieren
Agent neu starten

Hinweis: In SQL 2016 und höher wird das gastkonto in msdb aktiviert
		Unter SQL 2016 muss dem Agent das recht auf das Profil gewährt werden



