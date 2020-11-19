USE [master]
GO
EXEC master.dbo.sp_detach_db 
		@dbname = N'Northwind2',
		@skipchecks = 'false', 
		@keepfulltextindexfile=N'true'
GO



USE [master]
GO
CREATE DATABASE [ARDB] ON 
( FILENAME = N'D:\USER\SQLDB\ARDB.mdf' ),
( FILENAME = N'D:\USER\SQLDB\ARDB_log.LDF' )
 FOR ATTACH
GO
if exists (select name from master.sys.databases sd 
	where name = N'ARDB' and SUSER_SNAME(sd.owner_sid) = SUSER_SNAME() ) 


EXEC [ARDB].dbo.sp_changedbowner @loginame=N'DOM-PPA01\AR1', @map=false
GO




