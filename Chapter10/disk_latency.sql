--
--   disk_latency.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query finds avg wait for disk reads
--
Col Event format a30

Select Event, Total_Waits, Time_Waited, 
Average_Wait*10 Wait_In_Ms
From V$System_Event
Where Event Like 'db file seq%'
/
