SELECT * FROM employee.employees;

SELECT 
    FIRST_NAME, LAST_NAME, DEPARTMENT_ID, DEPARTMENT_NAME
FROM
    employees
        JOIN
    departments USING (DEPARTMENT_ID);