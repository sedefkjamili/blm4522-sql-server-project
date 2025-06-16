RESTORE DATABASE Northwind_Kurtarildi
FROM DISK = 'C:\SQLYedekler\Northwind_Yedek.bak'
WITH
    MOVE 'Northwind' TO 'C:\SQLYedekler\Northwind_Kurtarildi.mdf',
    MOVE 'Northwind_log' TO 'C:\SQLYedekler\Northwind_Kurtarildi_log.ldf',
    REPLACE;
