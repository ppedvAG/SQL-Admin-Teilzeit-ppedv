--Snapshot sichert nur Seiten einer DB weg, bevor sie geändert weden
--Alle Anfragen an den Snapshot werden solange umgeleitet auf die Orig DB, bis der Snapshot Seiten erhält.

--


-- Create the database snapshot..hat kein Logfile
CREATE DATABASE Nwind1600 ON
(	NAME = 'Northwind' ,  --logischer Dateinbame der DB Northwind

	FILENAME = 'C:\_SQLDBS\nwind1600.mdf'
 )
AS SNAPSHOT OF northwind;
GO


use master 

--es darf keiner auf den Snapshoot sein und auch nicht auf der OrgDB


restore database northwind from database_Snapshot = 'nwind1600'



create database sn_testdb_1402
on  (name=testdb, filename='D:\testdbdaten2.mdf'),
	 (name=Stamm_datenxx, filename='d:\stammdatenxxsn2.ndf'),
	 (name=Umsatz_datenxx, filename='d:\umsatzdatensn2.ndf')
as snapshot of testdb


-- master verwenden
use master
restore database testdb from 
	database_snapshot='sn_testdb_1402'