SELECT * FROM employee.employees;

SELECT 
    LENGTH(CONCAT(FIRST_NAME, LAST_NAME)) AS 'NAME'
FROM
    employees;