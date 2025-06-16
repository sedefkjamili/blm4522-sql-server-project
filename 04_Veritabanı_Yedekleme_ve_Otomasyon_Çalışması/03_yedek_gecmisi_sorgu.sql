USE msdb;
GO
SELECT
    bs.database_name,
    bs.type          AS backup_type,
    CASE bs.type
      WHEN 'D' THEN 'Full'
      WHEN 'I' THEN 'Differential'
      WHEN 'L' THEN 'Log'
    END              AS backup_desc,
    bs.backup_start_date,
    bs.backup_finish_date,
    bmf.physical_device_name AS backup_file
FROM dbo.backupset bs
JOIN dbo.backupmediafamily bmf
  ON bs.media_set_id = bmf.media_set_id
WHERE bs.database_name    = 'Northwind'
  AND bs.backup_finish_date >= DATEADD(day, -7, GETDATE())
ORDER BY bs.backup_finish_date DESC;
