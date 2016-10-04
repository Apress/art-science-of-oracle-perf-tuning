--
--   histo.sql
--
--   Chris Lawson   Rev 11/10/2003
--   "The Art & Science of Oracle Performance Tuning"
--
--  This script lists the histogram "buckets"
-- 

SELECT Endpoint_Number, Endpoint_Value
FROM User_Tab_Histograms
WHERE Column_Name = 'MAJOR'
ORDER By 1
/


