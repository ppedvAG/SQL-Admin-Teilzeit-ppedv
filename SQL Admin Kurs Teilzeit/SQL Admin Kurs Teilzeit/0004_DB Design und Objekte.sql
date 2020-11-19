
--Vorname Otto

text() bis 2GB seit 2005 depricated--> varchar(max)
varchar(50)  'Otto'   4
char(50)     'Otto                               '  50
nvarchar(50) 'Otto'   4 *2  8
nchar(50)    'Otto                          ' 50 * 2

dbcc showcontig('Customers')



Seiten: 8192 bytes
Max Nutzlast 8073
Ein DS aber nur 8060 maximal

Ziel.. Auslastung der Seite muss sehr hoch sein
da Seiten 1:1 in RAM geschoben werden.. auch bei 51% Füllgrad



create table t1 (id int identity, sp1 char(4100)
		)

--ca 80MB
insert into  t1
select 'XY'
GO 20000


dbcc showcontig('t1') --ca 51% Füllgrad




--DB Objekte


--/*

Tabelle
dort sind die Daten

Sicht View
enthalten keine Daten
ist eine gemerkte ABfrage
kann wie eine Tabellen behandelt werden
--> INS UP DEL SEL  und auch Rechte darauf verteilen


Prozeduren
 create proc gp1
 as
 select * from tabelle-- INS UP DEL

 kann viele Statements enthalten
 gleicht wohl eher ein Windidws Batchdatei

 exec gp1


 
Funktionen


create function f1 (@par1 int) returns int
as
begin

end


select f(wert) from f(wert) where f(saplte) > f(wert)
select * from t1




--alle bringen dassslebe Ergebnis

a) adhoc
b) Sicht
c) Proz
d) f()

------schnell -------> Langsam
-- Proz ----> Sicht/adhoc ---> f()
