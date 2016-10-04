--   params.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists Event and P1-P3 parameters for a session
Col Event format a25
Col P1Text format a15
Col P2Text format a15
Col P3Text format a15
Select Event, P1Text, P1, P2Text, P2, P3Text, P3
From V$Session_Wait
Where SID = 19
/


    
