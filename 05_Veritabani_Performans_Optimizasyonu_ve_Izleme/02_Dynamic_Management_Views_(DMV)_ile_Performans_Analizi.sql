SELECT TOP 10 
    total_elapsed_time / execution_count AS AvgExecTime,
    execution_count,
    total_elapsed_time,
    total_worker_time,
    total_logical_reads,
    creation_time,
    last_execution_time,
    SUBSTRING(qt.text, 1, 1000) AS QueryText
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) AS qt
ORDER BY AvgExecTime DESC;
