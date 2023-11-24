SELECT * FROM employee.employees;

SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'NAME'
FROM
    employees
WHERE
    (EMPLOYEE_ID IN (SELECT  MANAGER_ID FROM employees));