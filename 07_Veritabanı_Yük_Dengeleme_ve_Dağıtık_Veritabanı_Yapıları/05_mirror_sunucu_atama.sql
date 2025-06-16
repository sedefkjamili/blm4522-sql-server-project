-- Temsili komut: Bu, ortamda Mirror kuruluysa çalýþýr
ALTER DATABASE Northwind_Principal
SET PARTNER = 'TCP://BackupServer:5022';
