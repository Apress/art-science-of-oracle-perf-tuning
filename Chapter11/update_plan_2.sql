--
--   update_plan_2.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art and Science of Oracle Performance Tuning"
--
-- This SQL updates the Resource Plan to specify
 -- a "Switch Group" and "Switch Time" for a user group
--
Exec Dbms_Resource_Manager.Update_Plan_Directive -
(PLAN => 'DAY', -
GROUP_OR_SUBPLAN => 'REPORTS', -
NEW_SWITCH_GROUP => 'BAD_REPORT', -
NEW_SWITCH_TIME => 900, -
NEW_SWITCH_ESTIMATE => TRUE)
/


 