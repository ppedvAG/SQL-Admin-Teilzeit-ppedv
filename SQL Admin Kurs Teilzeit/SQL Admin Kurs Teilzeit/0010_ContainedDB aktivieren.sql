sp_configure 'show advanced options', 1 ;
GO
RECONFIGURE ;
GO
sp_configure 'contained database authentication', 1;
GO
RECONFIGURE ;
GO
sp_configure 'show advanced options', 0 ;
GO
RECONFIGURE ;
GO

drop database [ContainDb1]

create database [ContainDb1]

USE [master]
GO
ALTER DATABASE [ContainDb1]
 SET CONTAINMENT = PARTIAL WITH NO_WAIT
GO


USE [ContainDb1]
GO
CREATE USER [Test] WITH PASSWORD=N'123@qwe'
GO

