SELECT * FROM employee.employees;

SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS "NAME"
FROM
    employees
WHERE
    SALARY > (SELECT 
            AVG(SALARY)
        FROM
            employees);