SELECT 
    IFNULL(CONCAT(m.lastName, ', ', m.firstName),
            'Top Manager') AS 'Manager',
    CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
FROM
    employees e
        LEFT JOIN
    employees m ON m.employeeNumber = e.reportsTo
ORDER BY manager DESC;