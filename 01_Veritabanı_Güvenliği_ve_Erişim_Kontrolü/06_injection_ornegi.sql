DECLARE @input NVARCHAR(100) = ''' OR 1=1 --';
DECLARE @sql NVARCHAR(MAX) = 'SELECT * FROM MusteriListesi WHERE AdSoyad = ' + @input;
EXEC sp_executesql @sql;
