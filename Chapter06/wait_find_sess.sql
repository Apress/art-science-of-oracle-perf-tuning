--
--   wait_find_sess.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists stats for those sessions waiting for a
--   particular event for a long time
--
Col Username format a30
Set pagesize 50
Select V.Sid, Username, Time_Waited, Average_Wait
From V$Session_Event V, V$Session S
Where Event = 'SQL*Net message to client'
and V.SID = S.SID
and Time_Waited > 10000
Order by Time_Waited DESC
/


