
--   substr.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query uses the Substr function to only consider the first 50 chars
--   The "having" clause includes those statements run > 50 times

Col Similar_SQL format a50
Set pagesize 50
Select Substr (Sql_Text, 1,50) Similar_SQL, count (*)
From V$Sql
Group by Substr (Sql_Text, 1, 50)
Having Count (*) > 50
Order by Count (*)
/

