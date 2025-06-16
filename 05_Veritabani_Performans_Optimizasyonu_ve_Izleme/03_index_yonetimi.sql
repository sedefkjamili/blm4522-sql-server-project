SELECT 
    migs.avg_total_user_cost AS AvgCost,
    migs.avg_user_impact AS AvgImpact,
    migs.user_seeks AS UserSeeks,
    mid.statement AS TableName,
    mid.equality_columns AS EqualityColumns,
    mid.inequality_columns AS InequalityColumns,
    mid.included_columns AS IncludedColumns
FROM sys.dm_db_missing_index_group_stats AS migs
INNER JOIN sys.dm_db_missing_index_groups AS mig
    ON migs.group_handle = mig.index_group_handle
INNER JOIN sys.dm_db_missing_index_details AS mid
    ON mig.index_handle = mid.index_handle
ORDER BY migs.avg_user_impact DESC;
