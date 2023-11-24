SELECT * FROM employee.employees;

SELECT 
    FIRST_NAME,
    LAST_NAME,
    ROUND(SALARY, - 2) AS 'SALARY',
    ROUND(SALARY * 0.15) AS 'PF'
FROM
    employees;