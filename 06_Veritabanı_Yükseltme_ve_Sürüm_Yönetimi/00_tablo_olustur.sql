CREATE TABLE LogDDLChanges (
    EventType NVARCHAR(100),
    ObjectName NVARCHAR(100),
    CommandText NVARCHAR(MAX),e
    EventDate DATETIME
);
