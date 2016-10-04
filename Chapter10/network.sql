--
--   network.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--   This query lists network traffic for each SID
--
Col Sid format 999
Col Name Format A50
 Select Sid, Name, Value From V$Sesstat One, V$Statname Two
 Where One.Statistic# = Two.Statistic#
 And Upper(Name) Like '%NET%'
 And Value > 1000
 Order By 1
/


