--   time_log.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds statistics for log buffer waits
--
Col Event format a30
Set pagesize 50
Select Event, Time_Waited, Average_Wait 
From V$System_Event
Where Event = 'log buffer space'
/
