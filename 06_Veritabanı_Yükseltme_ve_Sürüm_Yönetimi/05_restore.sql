RESTORE DATABASE Northwind_GeriYukleme
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Northwind_PreUpgrade.bak'
WITH MOVE 'Northwind' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Northwind_GeriYukleme.mdf',
     MOVE 'Northwind_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Northwind_GeriYukleme.ldf',
     REPLACE;
