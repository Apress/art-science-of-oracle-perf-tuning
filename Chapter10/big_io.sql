--
--   big_io.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds SQL statements that consume 10,000 blocks I/O per exec
--
Col TEXT format a60
Set pagesize 50
Select Executions EXEC, Disk_Reads DISK, Sql_Text TEXT
From V$Sql
Where Disk_Reads/(.01 + executions) > 10000
/
 
