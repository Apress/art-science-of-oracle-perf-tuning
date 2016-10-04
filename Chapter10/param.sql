--
--   param.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
-- This query returns value for an init.ora parameter
-- with a certain keyword in the name
--
Col Name Format A33
Col Value Format A22
Select Name, Value From V$Parameter
Where Name Like '%&1%'
/


