
--
--   find_pins.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
-- This script finds objects for potential pinning in memory
-- 
col Owner format a20
col Name format a40
SELECT Owner, Name, Sharable_Mem 
FROM V$Db_Object_Cache 
WHERE Sharable_Mem > 100000
/
