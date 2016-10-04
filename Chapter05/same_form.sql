--   same_form.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds SQL statements of the same form that consume 1 m reads
--
Col TEXT format a50
Set pagesize 50
Select Persistent_Mem MEM, Sum (Disk_Reads) DISK
From V$Sql
Group by Persistent_Mem
Having Sum (Disk_Reads) > 1000000
Order by Sum (Disk_Reads)
/

