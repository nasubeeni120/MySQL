SELECT * FROM employee.job_history;

-- Write a query to find the employee ID, job title, number of days between ending date 
-- and starting date for all jobs in department 90 from job history.

SELECT 
	-- FROM JOB_HISTORY
    EMPLOYEE_ID, JOB_ID, START_DATE, END_DATE
FROM
    job_history
        NATURAL JOIN
	-- Natural Join into jobs
    jobs
WHERE
    DEPARTMENT_ID = 90;