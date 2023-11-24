SELECT * FROM employee.employees;

SELECT 
    FIRST_NAME, LAST_NAME, SALARY
FROM
    employees
WHERE
    SALARY > (SELECT 
            SALARY
        FROM
            employees
        WHERE
            LAST_NAME = 'Bull');
