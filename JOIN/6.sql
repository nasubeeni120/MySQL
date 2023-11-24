SELECT 
    *
FROM
    employee.employees;
-- Write a query to get the department name and number of employees in the department.
-- DP ID, COUNT, 
/**
SELECT e.DEPARTMENT_ID, 
	d.DEPARTMENT_ID, 
FROM employess e
JOIN departments d ON COUNT(EMPLOYEE_ID)
WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID;
*/

SELECT 
	-- 1. Department name FROM departmebt table
    -- 2. COUNT FROM tue result
    DEPARTMENT_NAME AS 'Department Name',
    COUNT(*) AS 'No of employees'
FROM
	-- 3. FROM departments
    departments
        INNER JOIN
        -- INNERJOIN WHERE is the same dp_id in employess tabe and dp_id in departments table
    employees ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
    -- GROUP BY departments id and departments nsame
GROUP BY departments.DEPARTMENT_ID , DEPARTMENT_NAME
	-- ORDER BY Department name
ORDER BY DEPARTMENT_NAME;
