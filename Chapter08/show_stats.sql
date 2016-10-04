--
--   show_stats.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists stats for all tables in a schema
--
Col Table_Name format a30
Set pagesize 50
Select Table_Name, Last_Analyzed, Sample_Size, Num_Rows from Dba_Tables
Where
Owner = 'CHRIS'
/






