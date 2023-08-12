
-- Operation Revenue

-- (Rental Revenue + Equipment Rental + Fee Revenue +Tenant Property Protection Revenue) - Bad Debt Expense = Total Revenue
--Total Revenue
;
WITH R AS (
SELECT 
* 
FROM DWH_Code.DBO.reportinggroup
WHERE SS_CATEGORY = 'Rental Revenue'
OR SS_CATEGORY = 'Retail Sales'
OR SS_CATEGORY = 'Equipment Rental'
OR SS_CATEGORY = 'Fee Revenue'
OR SS_CATEGORY = 'Tenant Property Protection Revenue'	
OR SS_CATEGORY = 'Bad Debt Expense' 
)

--EXCLUDE UPPER LEVEL REV ACCOUNTS
SELECT * FROM R
WHERE NATURAL <> 46015
AND NATURAL <> 49990
AND NATURAL <> 44035
AND NATURAL <> 44040
AND NATURAL <> 46040
AND NATURAL <> 47021
AND NATURAL <> 47022
AND NATURAL <> 47023
AND NATURAL <> 47024
AND NATURAL <> 47025
AND NATURAL <> 44031
AND NATURAL <> 48011
AND NATURAL <> 47026
AND NATURAL <> 44005
AND NATURAL <> 44010
AND NATURAL <> 44015
AND NATURAL <> 44020
AND NATURAL <> 44025
AND NATURAL <> 46030
AND NATURAL <> 47010
AND NATURAL <> 47020
AND NATURAL <> 48010
AND NATURAL <> 48020
AND NATURAL <> 48030

--ORDER BY SS_CATEGORY








--Cost of Goods Sold
SELECT 
* 
FROM DWH_Code.DBO.reportinggroup
WHERE SS_CATEGORY = 'Cost of Goods Sold' 	

--Total Revenue - (Cost of Goods Sold) = Total Gross Income