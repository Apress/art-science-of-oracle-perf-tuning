
--
--   check_mem.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script lists memory usage by operation
-- 
SELECT Low_Optimal_Size/1024 Lowkb, 
(High_Optimal_Size +1)/1024 Highkb,
Optimal_Executions Optimal,
Onepass_Executions Onepass_Md,
Multipasses_Executions Multipass
FROM V$Sql_Workarea_Histogram
WHERE Total_Executions <> 0
ORDER BY 1
/

