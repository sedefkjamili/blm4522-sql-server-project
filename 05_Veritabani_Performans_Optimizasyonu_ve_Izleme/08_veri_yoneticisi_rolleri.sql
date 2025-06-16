-- Login oluþtur
CREATE LOGIN PerfUser WITH PASSWORD = 'StrongPassword123';

-- Northwind içinde kullanýcýya baðla
USE Northwind;
CREATE USER PerfUser FOR LOGIN PerfUser;

-- Sadece SELECT yetkisi ver
GRANT SELECT ON SCHEMA::dbo TO PerfUser;
