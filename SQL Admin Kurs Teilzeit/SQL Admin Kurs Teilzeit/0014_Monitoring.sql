/*
Aktiv

ISt SQL Server schuld??
Taskmanager und Ressourcenmonitor von Windows

? unbekannte Prozesse
teakids.exe  Admin
mslaugh.exe  Admin

SQL Server --> Aktivitätsmonitor
basiert auf DMVs
zeigt mehr oder weniger das live System

Aufzeichung auf Dauer über längeren Zeitraum

DMVs ausführen --> Ergebnisse in Tabellen wegschreiben mit Zeitstempel
Profiler  (zeichnet TSQL Statements und mehr auf) 
	Vorsicht: Ressourcenfresser

Perfmon (NT Tool: Grafische Auswertung des OS und SQL)
	lieber mehr messen als zu wenig

	--Siehe Projekt: Sonstiges
	PAL.xml  = VOrlage für Perfmon

Xevents.. die "Zukunft" bzw sollte schin verwendet werden
	etwas komplizierter in der Bedienung
	genauer und umfangreicher
	Auswertung könnte besser sein
	ressourcenschonender.. kann Profiler noch nicht ganz ersetzen

Datenbakoptimierungsratgeber
	Indizes auf basis eines typischen Workload des Tages vorschlagen lassen


--Monitoring


/*
Live Problem: 

Taskmanager---BitCoin Trojander Spam AntiVirentool

--falls nicht anderes als verdachstig erscheint.. dann SQL Server

--Aktivitätsmonitor

--Wartende tasks (CPU low, RAM genug übrig, HDD ok,) --> Locks

--Locks sind Zugriffssperren Sperren auf DAtensätze (durch USer, Anwendung) Schreiben hindert Lesen
--Latch: interne Sperrem..
--jeder Ressource kann blockiert sein durch etwas anderes oder durch Auslastung

--Woher bekomme ich die Infs woraus ich warten muss?

im Aktivitätsmonitr nur die letzte Sekunden..

Locks zeigt 3000ms an in den letzte 1000ms







*/







*/