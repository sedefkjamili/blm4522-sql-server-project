USE Northwind;
GO

CREATE TRIGGER ddl_trigger_schema_changes
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS
BEGIN
    INSERT INTO LogDDLChanges(EventType, ObjectName, CommandText, EventDate)
    SELECT 
        EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(100)'),
        EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'nvarchar(100)'),
        EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'nvarchar(max)'),
        GETDATE();
END;
GO
