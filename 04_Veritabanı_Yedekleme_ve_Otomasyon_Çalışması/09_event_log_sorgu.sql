USE msdb;
GO
SELECT TOP 20
  log_date,
  event_type,
  description
FROM dbo.sysmail_event_log
ORDER BY log_date DESC;
GO
