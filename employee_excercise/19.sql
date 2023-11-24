SELECT * FROM employee.employees;

SELECT 
    EMPLOYEE_ID, FIRST_NAME, ROUND(SALARY / 12, - 2) AS "Monthly Salary"
FROM
    employees;