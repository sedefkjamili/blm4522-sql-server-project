UPDATE MusteriListesi
SET FirmaAdi = 'Bilinmiyor'
WHERE FirmaAdi IS NULL OR FirmaAdi = '';

UPDATE MusteriListesi
SET AdSoyad = 'İsim Eksik'
WHERE AdSoyad IS NULL OR AdSoyad = '';

UPDATE MusteriListesi
SET City = 'Bilinmiyor'
WHERE City IS NULL OR City = '';

UPDATE MusteriListesi
SET Phone = '0000000000'
WHERE Phone IS NULL OR Phone = '';

UPDATE MusteriListesi
SET SehirBuyuk = UPPER(City);
