USE Northwind;
GO
SELECT TOP 1 * FROM MusteriListesi;

UPDATE MusteriListesi
SET City = 'DenetimTest'
WHERE AdSoyad = 'Maria Anders';
