/*
Aktiv

ISt SQL Server schuld??
Taskmanager und Ressourcenmonitor von Windows

? unbekannte Prozesse
teakids.exe  Admin
mslaugh.exe  Admin

SQL Server --> Aktivit�tsmonitor
basiert auf DMVs
zeigt mehr oder weniger das live System

Aufzeichung auf Dauer �ber l�ngeren Zeitraum

DMVs ausf�hren --> Ergebnisse in Tabellen wegschreiben mit Zeitstempel
Profiler  (zeichnet TSQL Statements und mehr auf) 
	Vorsicht: Ressourcenfresser

Perfmon (NT Tool: Grafische Auswertung des OS und SQL)
	lieber mehr messen als zu wenig

	--Siehe Projekt: Sonstiges
	PAL.xml  = VOrlage f�r Perfmon

Xevents.. die "Zukunft" bzw sollte schin verwendet werden
	etwas komplizierter in der Bedienung
	genauer und umfangreicher
	Auswertung k�nnte besser sein
	ressourcenschonender.. kann Profiler noch nicht ganz ersetzen

Datenbakoptimierungsratgeber
	Indizes auf basis eines typischen Workload des Tages vorschlagen lassen


--Monitoring


/*
Live Problem: 

Taskmanager---BitCoin Trojander Spam AntiVirentool

--falls nicht anderes als verdachstig erscheint.. dann SQL Server

--Aktivit�tsmonitor

--Wartende tasks (CPU low, RAM genug �brig, HDD ok,) --> Locks

--Locks sind Zugriffssperren Sperren auf DAtens�tze (durch USer, Anwendung) Schreiben hindert Lesen
--Latch: interne Sperrem..
--jeder Ressource kann blockiert sein durch etwas anderes oder durch Auslastung

--Woher bekomme ich die Infs woraus ich warten muss?

im Aktivit�tsmonitr nur die letzte Sekunden..

Locks zeigt 3000ms an in den letzte 1000ms







*/







*/