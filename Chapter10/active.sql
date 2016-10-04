--
--   active.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists active sessions
--
Col username format a13
Col prog format a22
Col Sql_Text format a57
Col Sid format 999
Set linesize 120

Select Sid, username, Substr(program,1,19) PROG , sql_text 
From V$Session, V$Sql
Where status = 'ACTIVE'
And username is not null
And V$Session.sql_address = V$Sql.address
And V$Session.sql_hash_value = V$Sql.hash_value
/
 
