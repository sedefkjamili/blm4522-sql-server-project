-- 1. Northwind_Copy ad�nda bo� bir veritaban� olu�turulur
CREATE DATABASE Northwind_Copy2;
GO

-- 2. Replikasyon i�in yap�land�rma komutlar�

-- Veritaban�n� replikasyona a�ma
EXEC sp_replicationdboption 
    @dbname = N'Northwind', 
    @optname = N'publish', 
    @value = true;

-- Publication (yay�n) tan�m�
EXEC sp_addpublication 
    @publication = N'Northwind_Snapshot', 
    @status = N'active';

-- Abonelik (subscriber) tan�m�
EXEC sp_addsubscription 
    @publication = N'Northwind_Snapshot',
    @subscriber = N'localhost',
    @destination_db = N'Northwind_Copy',
    @subscription_type = N'push';
