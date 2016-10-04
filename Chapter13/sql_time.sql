
--
--   sql_time.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
-- This script lists SQL statements that started
-- at a given time
-- 
SELECT Executions, Buffer_gets, Disk_reads, Sql_Text
FROM V$Sql
WHERE First_Load_Time like '%09:00%' 
/


