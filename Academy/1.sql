-- 3.temp와 emp_level을 이용해 emp_level의 과장,수습 직급의 연봉 상한/하한 범위 내에
-- 드는 직원의 사번과, 성명, 직급, salary를 읽어보자.
-- temp:t emp_level:lv

SELECT 
    t.EMP_ID, t.EMP_NAME, t.SALARY
FROM
    TEMP t
        JOIN
    emp_level lv  
WHERE
	t.LEV = lv.LEV 
    -- IN ('사원','수습')
   -- IN(SELECT LEV FROM 
   AND (t.SALARY BETWEEN lv.FROM_SAL AND lv.TO_SAL); 