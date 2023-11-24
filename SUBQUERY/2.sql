SELECT * FROM employee.employees;

SELECT 
    FIRST_NAME, LAST_NAME, JOB_ID
FROM
    employees
WHERE
    DEPARTMENT_ID IN (SELECT 
            DEPARTMENT_ID
        FROM
            departments
        WHERE
            DEPARTMENT_NAME = 'IT');