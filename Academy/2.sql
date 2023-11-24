SELECT * FROM COMPANY.TCOM;

# tcom의 work_year = '2001'인 자료와 temp를 사번으로 연결해서 join한 후
# comm을 받는 직원의 성명, salary + COMM을 조회해 보시오
-- TEMP t / TCOM d

SELECT 
    EMP_NAME, 
    t.EMP_ID, 
    d.EMP_ID,
    SUM (t.SALARY 
		AS "TOTAL"
FROM
    TEMP AS t
        JOIN
    TCOM d ON (t.EMP_ID = d.EMP_ID)
WHERE
    WORK_YEAR = '2001';        