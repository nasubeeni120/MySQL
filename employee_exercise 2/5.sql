SELECT * FROM employee.employees;

SELECT 
    FIRST_NAME
FROM
    employees
WHERE
    FIRST_NAME LIKE 'b%'
        AND FIRST_NAME LIKE '%c';