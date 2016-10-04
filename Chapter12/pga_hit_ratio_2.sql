--
--   pga_hit_ratio_2.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script compares PGA hit ratio for PGA target multiples
-- 
SELECT Low_Optimal_Size/1024 LOWKB, 
(High_Optimal_Size +1)/1024 HIGHKB,
Estd_Optimal_Executions OPT,
Estd_Onepass_Executions ONEPASS,
Estd_Multipasses_Executions MULTI
FROM V$Pga_Target_Advice_Histogram
WHERE Pga_Target_Factor = 3
AND Estd_Total_Executions <> 0
ORDER BY 1
/
