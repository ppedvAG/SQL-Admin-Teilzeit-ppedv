/*


SystemDatenbanken


3M?

model
	nix drin
	Vorlage f�r neue DBs

	create database testdb

	eine �nderung der model hat eine Auswirkung auf jede neue DB (Backup)

	Muss man die model sichern?   theoretisch ja
	--Script ist einfacher
	USE [master]

	ALTER DATABASE [model] SET RECOVERY SIMPLE WITH NO_WAIT
	GO

	
master
		'Herzst�ck des SQL Server'
		Login
		Datenbanken (DBName und Datein inlk PFade)
		Teile der KOnfiguration

		Muss die master gesichert werden: auf jede Fall

msdb
		DB f�r den Agent
		JOBS, Zeitpl�ne, Wartungspl�ne, EMailsystem...

		Muss man die msdb sichern? auf jeden Fall


tempdb
	temp Tabellen # ##
	Zeilenversionierung (Momentaufnahmenisolation)
	IX Wartung (echt viel: 200MB Daten--> 1 GB)
	Auslagerungen

	Muss die tempdb gesichert werden: Null Sinn!


	--Regelm Sicherung der SystemDBs



	--Wartungsplan

	*/

	create database testDB

	--Gr��en der Dateien 16 MB
	-- 8 MB Daten und 8 MB Log
	--Wachstum 64 MB

	--Macht das Sinn , mit so wenig zu beginnen

	--Tipp:: mach das Ding so gro�  , wie du denkst dass es in 3 Jahren sein wird
	--backup kein Problem


	--immer wieder kontrollieren.. eine DB sollte so gut wie niee autom wachsen.





