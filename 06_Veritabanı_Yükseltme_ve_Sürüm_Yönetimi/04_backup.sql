BACKUP DATABASE Northwind
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Northwind_PreUpgrade.bak'
WITH INIT,
     NAME = 'Northwind Backup';
