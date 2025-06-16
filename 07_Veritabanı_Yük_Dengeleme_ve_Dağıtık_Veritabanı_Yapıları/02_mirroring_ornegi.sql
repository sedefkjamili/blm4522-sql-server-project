-- Mirroring örneði (görsel amaçlý temsili)
-- Gerçek ortamda SSMS GUI ile yapýlandýrýlýr

ALTER DATABASE Northwind
SET PARTNER = 'TCP://MirrorServer:5022';
