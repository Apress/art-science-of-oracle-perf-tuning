--  big_io2.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds SQL statements that consume 1 million I/O total
--
Col TEXT format a50
Set pagesize 50
Select Executions EXEC, Disk_Reads DISK, Sql_text TEXT
From V$Sql
Where Disk_Reads > 1000000
/

