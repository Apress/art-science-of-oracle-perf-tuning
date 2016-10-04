--
--   update_plan_1.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art and Science of Oracle Performance Tuning"
--
-- This SQL updates the Resource Plan to limit 
-- CPU usage for a certain group
--
Exec Dbms_Resource_Manager.Update_Plan_Directive -
(PLAN => 'PLAN_A', -
GROUP_OR_SUBPLAN => 'OUTSIDE_USERS', -
NEW_SWITCH_GROUP => 'LIMIT_CPU', -
NEW_SWITCH_TIME => 300, -
NEW_SWITCH_ESTIMATE => TRUE)
/

