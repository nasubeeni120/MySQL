-- 이들 데이터의 작업시간이 짧게 걸리는 시간 순서대로 1부터 15까지의 순위를 매겨서 출력하시오.
-- WORKCD_VC: 작업코드 / TIME_NU
-- 중복된 테이블 컬럼 비교할 때  --> 변수 하나 더 생성해버리고, WHERE에서 원래 SELECT문 Column이랑 비교하기
-- COUNT (*) + 1 --> Original TIME_NU보다 시간 오래걸리는 값들 +1 더해줌. 1등보다 작은 값은 없으니까 1등에는 +1 적용이 안 됨
-- 오름차순으로 (ASC) 정렬하기
/**
SELECT 
  SEQ_VC, TIME_NU
(SELECT COUNT(*)+1 FROM T_WORKTIME WHERE TIME_NU > t.TIME_NU)
AS "RANK" FROM T_WORKTIME AS t
ORDER BY RANK LIMIT 15;
/**
select Name, Score , (SELECT Count(*)+1 from ranking where Score > t.Score ) 
As Rank From ranking As t order by rank limit 0, 10;
-- 동일한 테이블 내에서 비교
*/

SELECT 
  SEQ_VC, TIME_NU AS "시간",
  (SELECT COUNT(*) + 1 FROM T_WORKTIME WHERE TIME_NU < num2.TIME_NU) AS "순위" 
FROM T_WORKTIME AS num2
ORDER BY TIME_NU ASC;
