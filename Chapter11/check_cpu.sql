--
--   check_cpu.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script lists CPU usage for all consumer resource groups
-- 
Col Name format a30
SELECT Name, Consumed_Cpu_Time CPU
FROM V$RSRC_CONSUMER_GROUP
/
