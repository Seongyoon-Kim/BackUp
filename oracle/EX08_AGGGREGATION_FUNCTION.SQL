-- EX08_AGGGREGATION_FUNCTION.SQL

/*

집계 함수, Aggregation Function

1. count()
2. sum()
3. avg()
4. max()
5. min()


1. count()
- 결과셋의 레코드 갯수를 반환
- number count(컬럼명)
- null은 카운트에서 제외한다.(*******)



*/
SELECT NAME
FROM TBLCOUNTRY;

SELECT COUNT(NAME)
FROM TBLCOUNTRY; -- 14


SELECT COUNT(NAME) -- 3. 33
FROM TBLINSA -- 1. 60
WHERE CITY IN ('서울', '경기'); -- 2. 33


SELECT COUNT(AREA)
FROM TBLCOUNTRY;
SELECT COUNT(NAME)
FROM TBLCOUNTRY;

SELECT POPULATION
FROM TBLCOUNTRY;

SELECT COUNT(POPULATION)
FROM TBLCOUNTRY; -- 13


-- ORA-00937: not a single-group group function
-- 컬럼 리스트에 집계 함수와 단일 컬럼을 동시에 사용할 수 없다.
SELECT COUNT(NAME), NAME
FROM TBLCOUNTRY;


SELECT COUNT(NAME)
FROM TBLCOUNTRY;

SELECT NAME
FROM TBLCOUNTRY;


SELECT COUNT(NAME), COUNT(AREA)
FROM TBLCOUNTRY;

-- 살짝 고민?
-- TBLCOUNTRY의 나라 개수?
SELECT COUNT(NAME)
FROM TBLCOUNTRY;

SELECT COUNT(CAPITAL)
FROM TBLCOUNTRY;

SELECT COUNT(AREA)
FROM TBLCOUNTRY;

SELECT COUNT(POPULATION)
FROM TBLCOUNTRY;

SELECT COUNT(*)
FROM TBLCOUNTRY; -- 무조건 모든 레코드 갯수가 반환된다.


SELECT *
FROM TBLTODO;

-- 아직 안한 일의 갯수? -- 8개
SELECT COUNT(*)
FROM TBLTODO
WHERE COMPLETEDATE IS NULL;

-- 한 일의 갯수? 12개
SELECT COUNT(*)
FROM TBLTODO
WHERE COMPLETEDATE IS NOT NULL;

-- 안한 일의 갯수, 한 일의 갯수 -> 하나의 결과셋으로
SELECT COUNT(*) AS "전체 할일 갯수",
        COUNT(COMPLETEDATE) AS "한 일의 갯수",
        COUNT(*) - COUNT(completedate) AS "아직 안한 일의 갯수"
FROM TBLTODO;


SELECT  COUNT(*) AS "총 직원수",
        COUNT(TEL) AS "연락처가 있는 직원수",
        COUNT(*) - COUNT(TEL) AS "연락처가 없는 직원수"
FROM TBLINSA;


-- TBLINSA -> BUSEO 칼럼 -> 어떤 부서들이 있나요?
-- TBLINSA -> BUSEO 칼럼 -> 부서가 몇개인가요?
SELECT DISTINCT BUSEO
FROM TBLINSA;

SELECT COUNT(DISTINCT BUSEO) AS "부서 갯수"
FROM TBLINSA;


-- TBLCOMEDIAN 남자 몇명? 여자 몇명?
SELECT *
FROM TBLCOMEDIAN;

SELECT count(*)
FROM TBLCOMEDIAN
WHERE GENDER = 'm';

SELECT COUNT(*)
FROM TBLCOMEDIAN
WHERE GENDER = 'f';

-- 전체 인원수, 남자 인원수, 여자 인원수 -> 결과 셋
-- COUNT() + CASE END
SELECT  COUNT(*) AS "전체 인원수",
        COUNT(CASE
            WHEN GENDER = 'm' THEN 1
        END) AS "남자 인원수",
        COUNT(*) - COUNT(CASE
            WHEN GENDER = 'm' THEN 1
        END) AS "여자 인원수"
FROM TBLCOMEDIAN;


SELECT
    COUNT(*) AS 전체,
    COUNT(CASE
        WHEN GENDER = 'm' THEN '남자'
    END) AS 남자,
    COUNT(CASE
        WHEN GENDER = 'f' THEN '여자'
    END) AS 여자
FROM TBLCOMEDIAN;


SELECT AVG(BASICPAY)
FROM TBLINSA;

-- 평균 급여보다 많이 받는 직원들 명단
-- ORA-00934: group function is not allowed here
-- WHERE절에는 집계 함수를 사용할 수 없다. > WHERE절은 개인에 대한 조건절(집합 정보를 가져올 수 없다.)
SELECT *
FROM TBLINSA
WHERE BASICPAY > AVG(BASICPAY);


-- tblCountry.
-- 아시아(AS)와 유럽(EU)에 속한 나라의 개수?? -> 7개
SELECT COUNT(*)
FROM TBLCOUNTRY
WHERE CONTINENT IN ('AS', 'EU');

-- 인구수가 7000 ~ 20000 사이인 나라의 개수?? -> 2개
SELECT COUNT(*)
FROM TBLCOUNTRY
WHERE POPULATION BETWEEN 7000 AND 20000;

-- hr.employees
-- JOB_ID > 'IT_PROG' 중에서 급여가 5000불이 넘는 직원이 몇명? -> 2명
SELECT COUNT(*)
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' AND SALARY > 5000;

-- tblInsa
-- tel. 010을 안쓰는 사람은 몇명?(연락처가 없는 사람은 제외) -> 42명
SELECT COUNT(*)
FROM TBLINSA
WHERE TEL NOT LIKE '010%';

-- city. 서울, 경기, 인천 -> 그 외의 지역 인원수? -> 18명
SELECT COUNT(*)
FROM TBLINSA
WHERE CITY NOT IN ('서울', '경기', '인천');

-- 80년대생 + 여자 직원 총 몇명? -> 9명
SELECT COUNT(*)
FROM TBLINSA
WHERE SSN LIKE '8%-2%';


/*

2. sum()
- number sum(컬럼명)
- 해당 컬럼값들의 합을 구한다.
- 숫자형만 대상(문자형X, 날짜형X)


*/

SELECT WEIGHT
FROM TBLCOMEDIAN;

SELECT SUM(WEIGHT)
FROM TBLCOMEDIAN;

-- ORA-01722: invalid number
SELECT SUM(FIRST)
FROM TBLCOMEDIAN;

SELECT  SUM(BASICPAY),
        SUM(SUDANG),
        SUM(BASICPAY) + SUM(SUDANG),
        SUM(BASICPAY + SUDANG)
FROM TBLINSA;


/*

3. avg()
- number avg(컬럼명)
- 해당 컬럼값들의 평균값을 반환한다.
- 숫자형만 가능하다.
- 해당 컬럼이 NULL은 가진 항목은 제외한다.

*/

SELECT  SUM(BASICPAY),
        COUNT(*),
        SUM(BASICPAY) / COUNT(*), -- 평균
        AVG(BASICPAY) -- 평균
FROM TBLINSA;


-- 평균 인구수?
SELECT  SUM(POPULATION) / COUNT(*),
        SUM(POPULATION) / COUNT(POPULATION),
        AVG(POPULATION),
        COUNT(*), -- 14
        COUNT(POPULATION) -- 13
FROM TBLCOUNTRY;


-- 회사 성과급 지급
-- : 10명 팀원 -> 7명 참여 프로젝트 수익 발생, 3명 관련 없음
-- 1. 균등 지급 -> 수익 / 모든 팀원수 = SUM() / COUNT(*)
-- 2. 차등 지급 -> 수익 / 참여 팀원수 = SUM() / COUNT(참여팀원) = AVG()


/*

4. MAX()
- object max(컬럼명) : 최댓값 반환

5. MIN()
- OBJECT MIN(컬럼명) : 최솟값 반환
- 숫자형, 문자형, 날짜형


*/

SELECT  MAX(BASICPAY),
        MIN(BASICPAY)
FROM TBLINSA;

SELECT  MAX(NAME),
        MIN(NAME)
FROM TBLINSA;

SELECT  MAX(IBSADATE),
        MIN(IBSADATE)
FROM TBLINSA;




--sum()
--1. 유럽과 아프리카에 속한 나라의 인구 수 합? tblCountry > 14,198
SELECT  SUM(POPULATION)
FROM TBLCOUNTRY
WHERE CONTINENT IN ('EU', 'AF');

--2. 매니저(108)이 관리하고 있는 직원들의 급여 총합? hr.employees > 39,600
SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE MANAGER_ID = 108;

--3. 직업(ST_CLERK, SH_CLERK)을 가지는 직원들의 급여 합? hr.employees > 120,000
SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID IN (ST_CLERK, SH_CLERK);

--4. 서울에 있는 직원들의 급여 합(급여 + 수당)? tblInsa > 33,812,400
SELECT SUM(BASICPAY + SUDANG)
FROM TBLINSA
WHERE CITY = '서울';

--5. 장급(부장+과장)들의 급여 합? tblInsa > 36,289,000
SELECT SUM(BASICPAY)
FROM TBLINSA
WHERE JIKWI IN ('부장', '과장');

--avg()
--1. 아시아에 속한 국가의 평균 인구수? tblCountry > 39,165
SELECT AVG(POPULATION)
FROM TBLCOUNTRY
WHERE CONTINENT = 'AS';

--2. 이름(first_name)에 'AN'이 포함된 직원들의 평균 급여?(대소문자 구분없이) hr.employees > 6,270.4
SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%an%';

--3. 장급(부장+과장)의 평균 급여? tblInsa > 2,419,266.66
SELECT AVG(BASICPAY)
FROM TBLINSA
WHERE JIKWI IN ('부장', '과장');

--4. 사원급(대리+사원)의 평균 급여? tblInsa > 1,268,946.66
SELECT AVG(BASICPAY)
FROM TBLINSA
WHERE JIKWI IN ('대리', '사원');

--5. 장급(부장,과장)의 평균 급여와 사원급(대리,사원)의 평균 급여의 차액? tblInsa > 1,150,320
SELECT 
    AVG(CASE
        WHEN JIKWI IN ('부장', '과장') THEN BASICPAY
    END) - AVG(CASE
        WHEN JIKWI IN ('대리', '사원') THEN BASICPAY
    END) AS 급여차이
FROM TBLINSA;

SELECT *
FROM TBLINSA;

--max(),min()
--1. 면적이 가장 넓은 나라의 면적은? tblCountry > 959
SELECT MAX(AREA)
FROM TBLCOUNTRY;

--2. 급여(급여+수당)가 가장 적은 직원은 총 얼마를 받고 있는가? tblInsa > 988,000
SELECT MIN(BASICPAY + SUDANG)
FROM TBLINSA;




















