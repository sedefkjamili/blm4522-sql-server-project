-- Login olu�tur
CREATE LOGIN PerfUser WITH PASSWORD = 'StrongPassword123';

-- Northwind i�inde kullan�c�ya ba�la
USE Northwind;
CREATE USER PerfUser FOR LOGIN PerfUser;

-- Sadece SELECT yetkisi ver
GRANT SELECT ON SCHEMA::dbo TO PerfUser;
