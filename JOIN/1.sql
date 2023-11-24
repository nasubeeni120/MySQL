SELECT * FROM employee.employees;

SELECT 
    LOCATION_ID,
    STREET_ADDRESS,
    CITY,
    STATE_PROVINCE,
    COUNTRY_NAME
FROM
    locations
        NATURAL JOIN
    countries;