-- Availability Group oluþturma (temsili örnek)
CREATE AVAILABILITY GROUP [AG_Northwind]
    WITH (AUTOMATED_BACKUP_PREFERENCE = SECONDARY)
    FOR DATABASE [Northwind]
    REPLICA ON
        'SQLServer1' WITH (
            ENDPOINT_URL = 'TCP://SQLServer1.domain:5022',
            AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
            FAILOVER_MODE = AUTOMATIC),
        'SQLServer2' WITH (
            ENDPOINT_URL = 'TCP://SQLServer2.domain:5022',
            AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
            FAILOVER_MODE = AUTOMATIC);
