--
--   build_pin_code.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
-- This script creates SQL that will be run to pin objects
-- Spool the output of this script, and then run to pin objects
-- 
set heading off
SELECT 'Execute sys.dbms_shared_pool.keep('||''''||owner||'.'||name||'''' ||');'
FROM V$Db_Object_Cache
WHERE Sharable_Mem > 100000
AND TYPE NOT IN ('VIEW', 'SYNONYM', 'TABLE', 'CURSOR') 
AND NAME NOT LIKE '%SHARED_POOL%'
/


