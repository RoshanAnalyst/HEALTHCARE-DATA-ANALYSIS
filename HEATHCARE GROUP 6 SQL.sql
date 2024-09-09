Create database healthcare;
use healthcare;
select * from copyhealthcare;

-- --------------------------------------------------------------------------------------------------
-- -----------------------------------TOTAL DISCHARGE -----------------------------------------------
select sum(DIS_TOT) AS TOTAL_DISCHARGE FROM HEALTHCARE_data;

-- --------------------------------------------------------------------------------------------------
-- ---------------------------------PATIENT DAYS ----------------------------------------------------
SELECT * FROM healthcare_DATA;

SELECT TYPE_HOSP,ROUND(avg(DAY_TOT),1) AS AVG_DAYS FROM HEALTHCARE_DATA group by TYPE_HOSP ORDER BY AVG_DAYS DESC;

-- -----------------------------------------------------------------------------------------------------
-- -------------------------------------------- NET PATEINT REVENUE-------------------------------------

SELECT SUM(NET_TOT) AS NET_PATIENT_REVENUE FROM HEALTHCARE_DATA;

-- -------------------------------------------------------------------------------------------------
-- ------------------------------------ TOP 3 HOSPITAL REVENUE -----------------------------------
SELECT TYPE_HOSP,sum(NET_TOT) AS REVENUE FROM HEALTHCARE_DATA GROUP BY TYPE_HOSP ORDER BY REVENUE DESC LIMIT 3;
 
-- -------------------------------------------------------------------------------------------------------
-- -------------------------------------TOTAL HOSPITAL---------------------------------------------------

SELECT COUNT(DISTINCT FAC_NO) AS TOTAL_HOSPITAL FROM HEALTHCARE_DATA;

-- -------------------------------------------------------------------------------------------------------
-- --------------------------------- TOTAL PATIENT ------------------------------------------------------

SELECT SUM(GRIP_TOT) + SUM(GROP_TOT) AS TOTAL_PATIENT FROM HEALTHCARE_DATA;

-- ------------------------------------------------------------------------------------------------
-- ------------------------------CITY WISE HOSPITAL/REVENUE--------------------------------------

SELECT * FROM HEALTHCARE_DATA;

SELECT COUNTY_NAME,COUNT(DISTINCT FAC_NO) AS FAC_NUMBER,sum(NET_TOT) AS REVENUE FROM healthcare_data group by county_name order by revenue desc;

-- --------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------ TOP 3 HOSPITAL WISE BAD DEBT ---------------------------------------------------------

SELECT TYPE_HOSP,SUM(BAD_DEBT) AS BAD_DEBT FROM HEALTHCARE_DATA GROUP BY TYPE_HOSP ORDER BY BAD_DEBT DESC LIMIT 3;

SELECT * FROM HEALTHCARE_DATA;

-- ---------------------------------------------------------------------------------------------------------------
-- ------------------------------------YEAR WISE REVENUE ---------------------------------------------------------

SELECT YEAR,SUM(NET_TOT) AS TOTAL_REVENUE FROM HEALTHCARE_DATA GROUP BY YEAR ORDER BY TOTAL_REVENUE;
