SELECT * FROM employee.employees;

SELECT 
    EMPLOYEE_ID, FIRST_NAME
FROM
    employees
WHERE
    SALARY NOT BETWEEN 10000 AND 15000;