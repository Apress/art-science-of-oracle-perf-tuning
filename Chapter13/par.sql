--
--   par.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script shows init.ora parameters having a keyword
-- 
Col Name format a35
Col Value format a40
Select Name, Value from V$Parameter
Where Upper(Name) like Upper ('%&PARNAME%')
/

