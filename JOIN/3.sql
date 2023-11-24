SELECT * FROM employee.employees;

SELECT 
-- e : employee table
    e.FIRST_NAME,
    e.LAST_NAME,
    e.JOB_ID,
    e.DEPARTMENT_ID,
    d.DEPARTMENT_NAME
FROM
    employees e
        JOIN
        -- d: departments table / Find the same value in employee's ID and department's ID
    departments d ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
        JOIN
        -- l: locations table / Find the same value in department's Location id and Location's id
    locations l ON (d.LOCATION_ID = l.LOCATION_ID)
WHERE
	-- Conditions: locations table's City is 'London'
    LOWER(l.CITY) = 'London';