--   wait_for_sess.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists Event and Wait time for a session
--
Col Event format a30
Select Event, Wait_Time
From V$Session_Wait
Where SID = 19
/

