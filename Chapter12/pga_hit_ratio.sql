--
--   pga_hit_ratio.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script compares PGA hit ratio for different targets
-- 
SELECT ROUND (pga_target_for_estimate/(1024*1024)) TARGET,
Estd_pga_cache_hit_percentage HIT_RATIO,
Estd_Overalloc_Count WARN
FROM V$Pga_Target_Advice
/

