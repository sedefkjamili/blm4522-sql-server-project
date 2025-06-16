USE msdb;
GO
EXEC dbo.sp_send_dbmail
  @profile_name = 'BackupAlerts',
  @recipients   = 'seleniumdeneme10@gmail.com',
  @subject      = 'Test Email via Database Mail',
  @body         = 'Bu, Database Mail altyapýsýnýn testidir.';
GO
