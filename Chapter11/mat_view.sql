--
--   mat_view.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script creates sample materialized view
-- 

CREATE Materialized View Emp_Sales_Summary
Tablespace Finance
Storage (Initial 1m next 5m pctincrease 0)
Build Immediate
Refresh Complete
Enable query rewrite 
AS
SELECT Employee_Name, 
SUM (Sales_Amt) Sales_Total
FROM Sales
GROUP BY Employee_Name
/



