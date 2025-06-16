USE master;
GO
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
GO
EXEC sp_configure 'Database Mail XPs', 1;
RECONFIGURE;
GO
USE msdb;
GO
EXEC dbo.sysmail_stop_sp;
EXEC dbo.sysmail_start_sp;
GO
