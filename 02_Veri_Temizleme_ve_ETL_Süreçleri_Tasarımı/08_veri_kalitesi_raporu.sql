SELECT COUNT(*) AS EksikSehir
FROM MusteriListesi
WHERE City IS NULL OR City = '';

SELECT COUNT(*) AS TemizKayit FROM TemizMusteriler;
