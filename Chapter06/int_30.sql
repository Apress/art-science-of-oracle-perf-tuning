--   int_30.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists wait event activity over 30 sec interval
Col Event format a30

Drop table previous_events;

CREATE TABLE previous_events
    AS
    SELECT SYSDATE timestamp, v$system_event.*
    FROM  v$system_event;

    EXECUTE dbms_lock.sleep (30);

    SELECT  A.event, 
         A.total_waits - NVL (B.total_waits, 0) total_waits,
         A.time_waited - NVL (B.time_waited, 0) time_waited
    FROM   v$system_event A, previous_events B
    WHERE  B.event (+) = A.event
    ORDER BY A.event;


