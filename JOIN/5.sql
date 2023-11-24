SELECT * FROM employee.employees;
# 5. Write a query to find the name (first_name, last_name) 
# and hire date of the employees who was hired after 'Jones'.

SELECT 
    e.FIRST_NAME, e.LAST_NAME, e.HIRE_DATE
FROM
    employees e
        JOIN
    employees h ON (h.LAST_NAME = 'Jones')
WHERE
    h.HIRE_DATE < e.HIRE_DATE;