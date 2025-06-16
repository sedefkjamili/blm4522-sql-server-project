USE msdb;
GO
CREATE OR ALTER PROCEDURE dbo.SendNorthwindBackupReport
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @body NVARCHAR(MAX) =
    N'Northwind Backup Report (Last 7 days):' + CHAR(13) + CHAR(10);
  SELECT @body +=
    FORMAT(bs.backup_finish_date,'yyyy-MM-dd HH:mm:ss') + ' | ' +
    CASE bs.type WHEN 'D' THEN 'Full'
                 WHEN 'I' THEN 'Differential'
                 WHEN 'L' THEN 'Log' END
    + ' | ' + bmf.physical_device_name
    + CHAR(13) + CHAR(10)
  FROM msdb.dbo.backupset bs
  JOIN msdb.dbo.backupmediafamily bmf
    ON bs.media_set_id = bmf.media_set_id
  WHERE bs.database_name    = 'Northwind'
    AND bs.backup_finish_date >= DATEADD(day, -7, GETDATE())
  ORDER BY bs.backup_finish_date DESC;
  EXEC dbo.sp_send_dbmail
    @profile_name = 'BackupAlerts',
    @recipients   = 'seleniumdeneme10@gmail.com',
    @subject      = 'Northwind Backup Report',
    @body         = @body;
END;
GO
