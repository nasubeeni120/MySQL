SELECT * FROM employee.employees;

-- 2. Write a query to get the total salaries payable to employees.
SELECT 
    SUM(SALARY)
FROM
    employees;