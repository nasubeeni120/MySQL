SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Name', SALARY
FROM
    employees
WHERE
    SALARY > ALL(SELECT 
            AVG(SALARY)
        FROM
            employees
        GROUP BY DEPARTMENT_ID);
    