-- Mirroring �rne�i (g�rsel ama�l� temsili)
-- Ger�ek ortamda SSMS GUI ile yap�land�r�l�r

ALTER DATABASE Northwind
SET PARTNER = 'TCP://MirrorServer:5022';
