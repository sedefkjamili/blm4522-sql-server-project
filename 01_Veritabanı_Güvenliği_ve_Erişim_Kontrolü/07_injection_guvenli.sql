DECLARE @input NVARCHAR(100) = ''' OR 1=1 --';
DECLARE @sql NVARCHAR(MAX) = 'SELECT * FROM MusteriListesi WHERE AdSoyad = @ad';
EXEC sp_executesql @sql, N'@ad NVARCHAR(100)', @ad = @input;
