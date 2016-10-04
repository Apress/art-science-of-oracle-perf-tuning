
--   big_log.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds SQL statements that consume 20,000 logical reads per exec
--
Col TEXT format a50
Set pagesize 50
Select Executions EXEC, Buffer_Gets LOG, Sql_text TEXT
From V$Sql
Where  Buffer_Gets/(.01 + executions) > 20000
/


