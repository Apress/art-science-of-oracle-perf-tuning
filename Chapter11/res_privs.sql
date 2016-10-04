--
--   res_privs.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
-- This SQL grants Res Mgr Admin privilege to a user
--
Exec Dbms_Resource_Manager_Privs.Grant_System_Privilege -
(GRANTEE_NAME => 'CHRIS', -
PRIVILEGE_NAME => 'ADMINISTER_RESOURCE_MANAGER', -
ADMIN_OPTION => FALSE)
/


