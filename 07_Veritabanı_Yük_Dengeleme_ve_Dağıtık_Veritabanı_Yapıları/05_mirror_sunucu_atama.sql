-- Temsili komut: Bu, ortamda Mirror kuruluysa �al���r
ALTER DATABASE Northwind_Principal
SET PARTNER = 'TCP://BackupServer:5022';
