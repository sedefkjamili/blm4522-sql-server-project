-- 1. Northwind_Copy adýnda boþ bir veritabaný oluþturulur
CREATE DATABASE Northwind_Copy2;
GO

-- 2. Replikasyon için yapýlandýrma komutlarý

-- Veritabanýný replikasyona açma
EXEC sp_replicationdboption 
    @dbname = N'Northwind', 
    @optname = N'publish', 
    @value = true;

-- Publication (yayýn) tanýmý
EXEC sp_addpublication 
    @publication = N'Northwind_Snapshot', 
    @status = N'active';

-- Abonelik (subscriber) tanýmý
EXEC sp_addsubscription 
    @publication = N'Northwind_Snapshot',
    @subscriber = N'localhost',
    @destination_db = N'Northwind_Copy',
    @subscription_type = N'push';
