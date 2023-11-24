SELECT * FROM employee.employees;
# Write a query to find the employee id, name (last_name)
#  along with their manager_id and name (last_name).

SELECT 
	-- E: EMP ID and Name
    -- M: Manager ID and Name
    e.EMPLOYEE_ID AS 'EMP ID',
    e.LAST_NAME AS 'EMP Name',
    m.EMPLOYEE_ID AS 'Manager ID',
    m.LAST_NAME AS 'Manager Name'
FROM
	-- From EMP to Join manager information If employee id and manager id
    employees e
        JOIN
    employees m ON (e.EMPLOYEE_ID = m.MANAGER_ID);