--
--   update_plan_3.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art and Science of Oracle Performance Tuning"
--
-- This SQL updates the Resource Plan to place
--  runtime restrictions on a user group
--

Exec Dbms_Resource_Manager.Update_Plan_Directive -
(PLAN => 'DAY', -
GROUP_OR_SUBPLAN => 'EXTERNAL', -
NEW_ACTIVE_SESS_POOL_P1 => 50, -
New_QUEUEING_P1 => 300)
/

