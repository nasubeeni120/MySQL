SELECT * FROM employee.employees;

SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'NAME', SALARY
FROM
    employees
WHERE
    employees.SALARY = (SELECT 
            MIN_SALARY
        FROM
            jobs
        WHERE
            employees.JOB_ID = jobs.JOB_ID);