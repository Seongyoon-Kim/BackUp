-- ex19_subquery.sql

/*

메인쿼리, Main Query
- 하나의 select(insert, update, delete)로만 구성된 쿼리

서브쿼리, Sub Query
- 하나의 문장에 2개 이상의 select를 추가해서 구성된 쿼리
- 하나의 쿼리안에 또 다른 쿼리가 들어있는 형태
- 삽입 위치: select절, from절, where절, order by절 등..

- select + select x N
- insert + select x N
- update + select x N
- delete + select x N

*/

-- tblCountry. 인구수가 가장 많은 나라의 인구수는? -> 그 나라?
SELECT MAX(POPULATION) FROM TBLCOUNTRY;
SELECT NAME FROM TBLCOUNTRY WHERE POPULATION = 120660;

SELECT NAME FROM TBLCOUNTRY WHERE POPULATION = MAX(POPULATION); -- 00934. 00000 -  "group function is not allowed here"

SELECT NAME, POPULATION FROM TBLCOUNTRY WHERE POPULATION = (SELECT MAX(POPULATION) FROM TBLCOUNTRY);




-- TBLINSA. 급여가 가장 많은 사람의 이름?
SELECT NAME, BASICPAY FROM TBLINSA WHERE BASICPAY = (SELECT MAX(BASICPAY) FROM TBLINSA);



-- TBLINSA. 평균 급여보다 많이 받는 직원들?
SELECT AVG(BASICPAY) FROM TBLINSA;
SELECT * FROM TBLINSA WHERE BASICPAY > 1556526;
SELECT * FROM TBLINSA WHERE BASICPAY > (SELECT AVG(BASICPAY) FROM TBLINSA);



-- TBLINSA. '홍길동'과 같은 부서에 근무하는 사람들?
SELECT BUSEO FROM TBLINSA WHERE NAME = '홍길동';

SELECT * FROM TBLINSA WHERE BUSEO = (SELECT BUSEO FROM TBLINSA WHERE NAME = '홍길동') AND NAME <> '홍길동';




-- 서브쿼리의 용도
-- 1. 조건절 비교값으로 사용
--  a. 반환값이 1행 1열 > 단일값, 값 1개 > 스칼라 쿼리(1행 1열)
--  b. 반환값이 N행 1열 > 다중값, 값 N개 > IN 사용(열거형 비교)
--  c. 반환값이 1행 N열 > 복합값, 값 N개 > 연산자 사용(N:N)
--  d. 반환값이 N행 N열 > B + C > B와 C의 방식을 혼합해서 사용


-- 1.a
SELECT
    *
FROM TBLINSA
    WHERE BASICPAY = (SELECT MAX(BASICPAY) FROM TBLINSA); -- CASE A
    
    

-- 1.b
-- 급여가 260만원 이상 받는 사람들이 근무하는 부서의 명단?
SELECT
    *
FROM TBLINSA
    WHERE BUSEO IN (SELECT BUSEO FROM TBLINSA WHERE BASICPAY >= 2600000);
    -- WHERE BUSEO IN ('기획부', '총무부')
    
    
    
-- 기획부 대리와 같은 지역에 사는 사람들?
SELECT CITY FROM TBLINSA WHERE JIKWI = '대리' AND BUSEO = '기획부';
SELECT * FROM TBLINSA WHERE CITY IN ('서울', '인천', '전남');

SELECT * FROM TBLINSA WHERE CITY IN (SELECT CITY FROM TBLINSA WHERE JIKWI = '대리' AND BUSEO = '기획부');




-- 1.c
-- '홍길동' 사는 지역과 같은 지역에 살고, 같은 직위를 가지는 직원?
SELECT CITY, JIKWI FROM TBLINSA WHERE NAME = '홍길동'; -- 서울, 부장

SELECT * FROM TBLINSA WHERE CITY = '서울' AND JIKWI = '부장';

-- 2:2 -> N:N 비교
SELECT * FROM TBLINSA WHERE (CITY, JIKWI) = (SELECT CITY, JIKWI FROM TBLINSA WHERE NAME = '홍길동');

-- 1.D
-- 급여를 2600000원 이상 받는 직원의 부서와 사는곳이 동일한 직원들?
SELECT BUSEO, CITY FROM TBLINSA WHERE BASICPAY >= 2600000;

SELECT * FROM TBLINSA
    WHERE (BUSEO, CITY) IN (SELECT BUSEO, CITY FROM TBLINSA WHERE BASICPAY >= 2600000);


-- 서브쿼리의 용도
-- 1. 조건절 비교값으로 사용
--  a. 반환값이 1행 1열 > 단일값, 값 1개 > 스칼라 쿼리(1행 1열)
--  b. 반환값이 N행 1열 > 다중값, 값 N개 > IN 사용(열거형 비교)
--  c. 반환값이 1행 N열 > 복합값, 값 N개 > 연산자 사용(N:N)
--  d. 반환값이 N행 N열 > B + C > B와 C의 방식을 혼합해서 사용
-- 2. 컬럼리스트에서 사용
--  A. 반환값이 1행 1열 > 스칼라 쿼리
--      1. 정적 쿼리(모든 행에 동일한 값을 반환)
--      2. 상관 서브 쿼리(서브 쿼리의 값과 바깥쪽 메인 쿼리의 값을 연계시켜 값을 반환) ***********


SELECT
    NAME,
    BASICPAY,
    --(SELECT 100 FROM DUAL),
    --100,
    (SELECT ROUND(AVG(BASICPAY)) FROM TBLINSA)
FROM TBLINSA;



SELECT
    NAME,
    BUSEO,
    (SELECT ROUND(AVG(BASICPAY)) FROM TBLINSA) AS 평균급여,
    (SELECT JIKWI FROM TBLINSA WHERE NAME = '홍길동') -- 나머지 컬럼과 관계 있는 서브쿼리만 사용
FROM TBLINSA;



SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMEN;

-- 남자 이름, 남자 키, 여자이름, 여자 키 -> 홍길동
SELECT
    NAME AS 남자이름,
    HEIGHT AS 남자키,
    COUPLE AS 여자이름,
    (SELECT HEIGHT FROM TBLWOMEN WHERE NAME = TBLMEN.COUPLE) AS 여자키
FROM TBLMEN
-- WHERE NAME = '홍길동';
WHERE COUPLE IS NOT NULL; -- 커플




SELECT * FROM EMPLOYEES; -- 직원
SELECT * FROM DEPARTMENTS; -- 부서

-- 직원의 이름과 부서명을 가져오시오.
SELECT
    FIRST_NAME || ' ' || LAST_NAME AS NAME,
    -- DEPARTMENT_ID,
    (SELECT DEPARTMENT_NAME FROM DEPARTMENTS WHERE DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID) AS DEPARTMENT
FROM EMPLOYEES;


--10. tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?
SELECT * FROM TBLADDRESSBOOK;

SELECT
    JOB,
    COUNT(*)
FROM TBLADDRESSBOOK
GROUP BY JOB
ORDER BY COUNT(*) DESC;

SELECT
    JOB,
    HOMETOWN,
    COUNT(*)
FROM TBLADDRESSBOOK
WHERE JOB = '학생'
GROUP BY JOB, HOMETOWN
ORDER BY COUNT(HOMETOWN) DESC;

SELECT
    JOB,
    HOMETOWN,
    COUNT(*)
FROM TBLADDRESSBOOK
WHERE JOB = '학생' AND HOMETOWN = '서울'
GROUP BY JOB, HOMETOWN;

SELECT
    JOB,
    HOMETOWN
FROM TBLADDRESSBOOK
WHERE JOB = (SELECT JOB FROM TBLADDRESSBOOK GROUP BY JOB HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM TBLADDRESSBOOK GROUP BY JOB))
ORDER BY HOMETOWN;

--13. tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?
SELECT * FROM TBLADDRESSBOOK;

SELECT
    MAX(AVG(LENGTH(SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1))))
FROM TBLADDRESSBOOK
GROUP BY SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1);

SELECT
    SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1),
    AVG(LENGTH(SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1)))
FROM TBLADDRESSBOOK
    GROUP BY SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1)
        HAVING AVG(LENGTH(SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1))) = (SELECT
                                                                            MAX(AVG(LENGTH(SUBSTR(EMAIL, 1, INSTR(EMAIL, '@') - 1))))
                                                                        FROM TBLADDRESSBOOK
                                                                            GROUP BY SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1));

--14. tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?
SELECT * FROM TBLADDRESSBOOK;

SELECT
    MAX(AVG(AGE))
FROM TBLADDRESSBOOK
GROUP BY HOMETOWN;

SELECT
    DISTINCT JOB
FROM TBLADDRESSBOOK
    WHERE HOMETOWN = (SELECT HOMETOWN FROM TBLADDRESSBOOK GROUP BY HOMETOWN HAVING AVG(AGE) = 
                        (SELECT MAX(AVG(AGE)) FROM TBLADDRESSBOOK GROUP BY HOMETOWN));



--16. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;
SELECT DISTINCT JOB FROM TBLADDRESSBOOK;

SELECT
    AVG(AGE)
FROM TBLADDRESSBOOK
WHERE GENDER = 'm';

SELECT
    *
FROM TBLADDRESSBOOK
WHERE AGE > (SELECT AVG(AGE) FROM TBLADDRESSBOOK WHERE GENDER = 'm')
    AND HOMETOWN = '서울'
    AND JOB NOT IN ('백수', '취업준비생');

--19. tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    *
FROM TBLADDRESSBOOK
WHERE AGE = (SELECT MAX(AGE) FROM TBLADDRESSBOOK)
    AND WEIGHT = (SELECT MAX(WEIGHT) FROM TBLADDRESSBOOK);
    
SELECT
    *
FROM TBLADDRESSBOOK
WHERE JOB = (SELECT
    JOB
FROM TBLADDRESSBOOK
WHERE AGE = (SELECT MAX(AGE) FROM TBLADDRESSBOOK)
    AND WEIGHT = (SELECT MAX(WEIGHT) FROM TBLADDRESSBOOK))
    AND NAME <> '최성수';

--20. tblAddressBook. '건물주'와 '건물주자제분'들의 거주지가 서울과 지방의 비율이 어떻게 되느냐?
SELECT * FROM TBLADDRESSBOOK;

SELECT
    COUNT(CASE
        WHEN SUBSTR(ADDRESS, 1, 2) = '서울' THEN 1
    END) / COUNT(*) * 100 AS 건물주,
    COUNT(CASE
        WHEN SUBSTR(ADDRESS, 1, 2) <> '서울' THEN 1
    END) / COUNT(*) * 100 AS 건물주자제분
FROM TBLADDRESSBOOK;

SELECT
    ADDRESS
    FROM TBLADDRESSBOOK
WHERE JOB IN ('건물주', '건물주자제분');

--21. tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인(모든 이도윤)의 명단을 가져오시오.
SELECT
    MAX(COUNT(*))
FROM TBLADDRESSBOOK
GROUP BY NAME;

SELECT
    NAME
FROM TBLADDRESSBOOK
GROUP BY NAME
HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM TBLADDRESSBOOK GROUP BY NAME);

SELECT
    *
FROM TBLADDRESSBOOK
WHERE NAME = (SELECT NAME FROM TBLADDRESSBOOK GROUP BY NAME HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM TBLADDRESSBOOK
GROUP BY NAME));

--22. tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
--    [10대]       [20대]       [30대]       [40대]
--    8.7%        30.7%        28.3%        32.2%
SELECT * FROM TBLADDRESSBOOK;

SELECT
    MAX(COUNT(*))
FROM TBLADDRESSBOOK
GROUP BY JOB;

SELECT
    SUBSTR(AGE, 1, 1) || '0대',
    ROUND(COUNT(*) / (SELECT COUNT(*) FROM TBLADDRESSBOOK WHERE JOB = (SELECT JOB FROM TBLADDRESSBOOK GROUP BY JOB HAVING COUNT(*) = (SELECT MAX(COUNT(*))
    FROM TBLADDRESSBOOK GROUP BY JOB))) * 100, 1) AS 비율
FROM TBLADDRESSBOOK
WHERE JOB = (SELECT JOB FROM TBLADDRESSBOOK GROUP BY JOB HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM TBLADDRESSBOOK
GROUP BY JOB))
GROUP BY SUBSTR(AGE, 1, 1);

--38. employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.
SELECT * FROM EMPLOYEES;

SELECT
    FIRST_NAME || ' ' || LAST_NAME,
    SALARY,
    DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE SALARY >= 12000);

--40. employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT
    DEPARTMENT_ID
FROM EMPLOYEES
WHERE FIRST_NAME = 'Jonathon';

SELECT
    *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME = 'Jonathon');

--61. employees. 2001~2003년사이에 입사한 사원의 이름(first_name), 입사일(hire_date), 관리자사번 (employee_id), 관리자 이름(fist_name)을 가져오시오. 단, 관리자가 없는 사원정보도 결과에 포함시켜 가져오시오.
SELECT * FROM EMPLOYEES;

SELECT
    FIRST_NAME,
    HIRE_DATE,
    EMPLOYEE_ID,
    MANAGER_ID
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01/01/01' AND '03/12/31';
    


--63. employees. last_name 에 'u' 가 포함되는 사원들과 동일 부서에 근무하는 사원들의 사번 및 last_name을 가져오시오.
SELECT * FROM EMPLOYEES;

SELECT
    DEPARTMENT_ID
FROM EMPLOYEES
WHERE INSTR(LAST_NAME, 'u') > 0 OR INSTR(LAST_NAME, 'U') > 0;

SELECT
    EMPLOYEE_ID,
    LAST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE INSTR(LAST_NAME, 'u') > 0 OR INSTR(LAST_NAME, 'U') > 0);




















