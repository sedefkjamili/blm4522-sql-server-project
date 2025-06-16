SELECT *
FROM MusteriListesi
WHERE
    FirmaAdi IS NULL OR FirmaAdi = '' OR
    AdSoyad IS NULL OR AdSoyad = '' OR
    City IS NULL OR City = '' OR
    Phone IS NULL OR Phone = '';
