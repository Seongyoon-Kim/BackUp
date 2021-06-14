-- 029.SQL

-- Q001
-- 모든 행과 모든 컬럼을 가져오시오.
-- 테이블: TBLCOUNTRY

SELECT *
    FROM TBLCOUNTRY;
    
----------------------------------------------------------

-- Q002
-- 국가명과 수도명을 가져오시오.
-- 테이블: TBLCOUNTRY

SELECT NAME, CAPITAL
    FROM TBLCOUNTRY;
    
----------------------------------------------------------

-- Q003
-- 테이블: TBLCOUNTRY

SELECT NAME AS 국가명,
        CAPITAL AS 수도명,
        POPULATION AS 인구수,
        AREA AS 면적,
        CONTINENT AS 대륙
    FROM TBLCOUNTRY;
    
----------------------------------------------------------

-- Q004
-- 테이블: TBLCOUNTRY

SELECT '국가명:' || NAME ||
        ', 수도명:' || CAPITAL ||
        ', 인구수:' || POPULATION AS 국가정보
    FROM TBLCOUNTRY;

----------------------------------------------------------

-- Q005
-- 테이블: EMPLOYEES

SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, 
        EMAIL || '@GMAIL.COM' AS 이메일,
        PHONE_NUMBER AS 연락처,
        '$' || SALARY AS 급여
    FROM EMPLOYEES;
    
----------------------------------------------------------

-- Q006
-- 면적(AREA)이 100이하인 국가의 이름과 면적을 가져오시오.
-- 테이블: TBLCOUNTRY

SELECT NAME, AREA
    FROM TBLCOUNTRY
WHERE AREA <= 100;

----------------------------------------------------------

-- Q007
-- 아시아와 유럽 대륙에 속한 나라를 가져오시오.
-- 테이블: TBLCOUNTRY
-- 조건절(WHERE) 사용
-- IN 사용

SELECT *
    FROM TBLCOUNTRY
WHERE CONTINENT = 'AS' OR CONTINENT = 'EU';

----------------------------------------------------------

-- Q008
-- 직업(JOB_ID)이 프로그래머(IT_PROG)인 직원의 이름(풀네임)과 연락처를 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용

SELECT  FIRST_NAME || ' ' || LAST_NAME AS 이름,
        PHONE_NUMBER AS 연락처
    FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

----------------------------------------------------------

-- Q009
-- LAST_NAME이 'GRANT'인 직원의 이름, 연락처, 고용날짜를 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용

SELECT *
    FROM EMPLOYEES;


SELECT  FIRST_NAME || ' ' || LAST_NAME AS 이름,
        PHONE_NUMBER AS 연락처,
        HIRE_DATE AS 고용날짜
    FROM EMPLOYEES
WHERE LAST_NAME = 'Grant';

----------------------------------------------------------

-- Q010
-- 특정 매니저(120)이 관리하는 직원의 이름, 급여, 연락처를 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용

SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름,
        SALARY AS 급여,
        PHONE_NUMBER AS 연락처,
        MANAGER_ID AS 매니저
    FROM EMPLOYEES
WHERE MANAGER_ID = 120;

----------------------------------------------------------

-- Q011
-- 특정 부서(60, 80, 100)에 속한 직원들의 이름, 연락처, 이메일, 부서ID 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE)사용
-- IN 사용

SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름,
        PHONE_NUMBER AS 연락처,
        EMAIL AS 이메일,
        DEPARTMENT_ID AS 부서ID
    FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (60, 80, 100);

----------------------------------------------------------

-- Q012
-- 기획부 직원들 가져오시오.
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용

SELECT *
    FROM TBLINSA
WHERE BUSEO = '기획부';

----------------------------------------------------------

-- Q013
-- 서울에 있는 직원들 중 직위가 부장인 사람의 이름, 직위, 전화번호 가져오시오
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용

SELECT NAME AS 이름,
        CITY,
        JIKWI AS 직위,
        TEL AS 전화번호
    FROM TBLINSA
WHERE CITY = '서울' AND JIKWI = '부장';

----------------------------------------------------------

-- Q014
-- 기본급여 + 수당 합쳐서 150만원 이상인 직원 중 서울에 직원만 가져오시오.
-- 테이블 TBLINSA
-- 조건절(WHERE) 사용

SELECT *
    FROM TBLINSA
WHERE BASICPAY + SUDANG >= 1500000 AND CITY = '서울';

----------------------------------------------------------

-- Q015
-- 수당이 15만원 이하인 직원 중 직위가 사원, 대리만 가져오시오
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- IN 사용

SELECT *
    FROM TBLINSA
WHERE SUDANG <= 1500000 AND JIKWI IN ('사원', '대리');

----------------------------------------------------------

-- Q016
-- 수당을 제외한 기본 연봉이 2천만원 이상, 서울, 직위 과장(부장)만 가져오시오.
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- IN 사용

SELECT *
    FROM TBLINSA
WHERE BASICPAY * 12 >= 20000000 AND CITY = '서울' AND JIKWI IN ('과장', '부장');

----------------------------------------------------------

-- Q017
-- 국가명 'O국'인 나라를 가져오시오.
-- 테이블: TBLCOUNTRY
-- 조건: 국가명 2글자
-- 추가조건: 국가명 글자수 상관없이
-- 조건절(WHERE) 사용
-- LIKE 사용
SELECT *
    FROM TBLCOUNTRY
WHERE NAME LIKE '_국' OR NAME LIKE '%국';

----------------------------------------------------------

-- Q018
-- 연락처가 515로 시작하는 직원들 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용
-- LIKE 사용
SELECT *
    FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '515%';

----------------------------------------------------------

-- Q019
-- 직업 ID가 SA로 시작하는 직원들 가져오시오.
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM EMPLOYEES
WHERE JOB_ID LIKE 'SA%';

----------------------------------------------------------

-- Q020
-- FIRST_NAME에 'DE'가 들어간 직원들
-- 테이블: EMPLOYEES
-- 대소문자 상관없이
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%de%';

----------------------------------------------------------

-- Q021
-- 남자 직원만 가져오시오
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM TBLINSA
WHERE SSN LIKE '%-1%';

----------------------------------------------------------

-- Q022
-- 여자 직원만 가져오시오.
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM TBLINSA
WHERE SSN LIKE '%-2%';

----------------------------------------------------------

-- Q023
-- 여름에 태어난 직원들 가져오시오.
-- 테이블: TBLINSA
-- 7~9월생
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM TBLINSA
WHERE SSN LIKE '__07__-%' OR SSN LIKE '__08__-%' OR SSN LIKE '__09__-%';

----------------------------------------------------------

-- Q024
-- 서울, 인천에 사는 김씨만 가져오시오.
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM TBLINSA
WHERE NAME LIKE '김%' AND (CITY = '서울' OR CITY = '인천');

----------------------------------------------------------

-- Q025
-- 영업부/총무부/개발부 직원 중 사원급(사원/대리) 중에 010을 사용하는 직원들
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- LIKE 사용

SELECT *
    FROM TBLINSA
WHERE BUSEO IN ('영업부', '총무부', '개발부')
        AND JIKWI IN ('사원', '대리')
        AND TEL LIKE '010%';
        
----------------------------------------------------------

-- Q026
-- 서울/인천/경기에 살고 입사일이 2008년 ~ 2010년 사이인 직원
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- BETWEEN 사용

SELECT *
    FROM TBLINSA
WHERE CITY IN ('서울', '인천', '경기')
        AND IBSADATE BETWEEN '08/01/01' AND '10/12/31';
        
----------------------------------------------------------

-- Q027
-- 부서가 아직 배정 안된 직원들
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용
-- IS NULL 사용

SELECT *
    FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

----------------------------------------------------------

-- Q028
-- 직업이 어떤 것들이 있는지 가져오시오
-- 테이블: EMPLOYEES
-- DISTINCT 사용

SELECT DISTINCT JOB_ID
    FROM EMPLOYEES;
    
----------------------------------------------------------

-- Q029
-- 고용일이 2002~2004년 사이인 직원들은 어느 부서에 근무?
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용
-- BETWEEN 사용
-- DISTINCT 사용

SELECT DISTINCT DEPARTMENT_ID
    FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '02/01/01' AND '04/12/31';

----------------------------------------------------------

-- Q030
-- 급여가 5000불 이상인 직원들은 담당 매니저가 누구?
-- 테이블: EMPLOYEES
-- 조건절(WHERE) 사용

SELECT FIRST_NAME || ' ' || LAST_NAME, SALARY, MANAGER_ID
    FROM EMPLOYEES
WHERE SALARY >= 5000 AND MANAGER_ID IS NOT NULL;

----------------------------------------------------------

-- Q031
-- 남자 직원 + 80년대생들의 직급은 뭡니까?
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- DISTINCT 사용

SELECT DISTINCT JIKWI
    FROM TBLINSA
WHERE SSN LIKE '%-1%' AND SSN LIKE '8%';
-- WHERE SSN LIKE '8%-1%'

----------------------------------------------------------

-- Q032
-- 수당 20만원 넘는 직원들은 어디 삽니까?
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- DISTINCT 사용

SELECT DISTINCT CITY
    FROM TBLINSA
WHERE SUDANG > 200000;

----------------------------------------------------------

-- Q033
-- 연락처가 아직 없는 직원은 어느 부서입니까?
-- 테이블: TBLINSA
-- 조건절(WHERE) 사용
-- IS NULL 사용

SELECT BUSEO, NAYYYYYYME
    FROM TBLINSA
WHERE TEL IS NULL;























