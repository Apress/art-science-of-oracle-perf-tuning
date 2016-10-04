--   time_scat_reads.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds total time waited for scattered reads
--
Col Event format a30
Set pagesize 50
Select Event, Time_Waited 
From V$System_Event
Where Event = 'db file scattered read'
/
