-- ex18_groupby.sql

/*
[WITH <Sub Query]
SELECT column_list
FROM table_name


group by 절
- 레코드들의 특정 컬럼값(1개 or N개)에 맞춰서 그룹을 나누는 역할
- 그룹을 왜 나누는지?
    -> 각각의 나눠진 그룹 대상 -> 집계 함수를 적용하기 위해서 (*****) -> count, sum, avg, max, min

사용방법
- group by (기준이될)컬럼명 [, 컬럼명] x N 
    
--GROUP BY 문법
SELECT 컬럼리스트
FROM 테이블명
WHERE 조건
GROUP BY 그룹 기준
ORDER BY 정렬

--문법 내의 구문 실행 순서
***** select를 구성하는 모든 절들은 실행 순서가 있다. (불변) -> 무조건 암기
1. FROM절
2. WHERE절
3. GROUP BY절
4. SELECT절
5. ORDER BY절

.group by를 사용한 select절에서 사용할 수 있는 표현
1. 집계함수
2. group by 한 컬럼

*/

--tblinsa. 부서별로 직원수가 몇명??

select count(*) from tblinsa; -- 총직원수

select distinct buseo from tblinsa; --부서

select count(*) from tblinsa where buseo = '총무부'; --7
select count(*) from tblinsa where buseo = '개발부'; --14
select count(*) from tblinsa where buseo = '영업부'; --16
select count(*) from tblinsa where buseo = '기획부'; --7
select count(*) from tblinsa where buseo = '인사부'; --4
select count(*) from tblinsa where buseo = '자재부'; --6
select count(*) from tblinsa where buseo = '홍보부'; --6

-- group by 적용
select buseo as 부서명, 
        count(*) as 부서인원수,
        round(avg(basicpay)) as 부서평균급여,
        round(sum(basicpay)) as 부서급여총액
from tblinsa 
group by buseo;


-- ORA-00979: not a GROUP BY expression 
--직위
select jikwi,   -- 집합 데이터 (그룹기준)
        name,   -- 개인 데이터 (개별 레코드 기준)
        count(*)    --집합 데이터  (그룹기준)
from tblinsa
group by jikwi;

-- 남자 직원수? 여자 직원수? -> 성별 그룹 
select substr(ssn, 8, 1),
case
    when substr(ssn, 8, 1) = '1' then '남자'
    when substr(ssn, 8, 1) = '2' then '여자'
end as gender,
count(*)
from tblinsa
group by substr(ssn, 8, 1);

select * from tblcountry;

select continent, count(*), max(population)
from tblcountry
group by continent;

select name, count(*)
from tblcountry
group by name;

select gender, round(avg(height), 1), 
                    round(avg(weight),1)
from tblcomedian
group by gender;

select job, count(*)
from tbladdressbook
group by job
order by count(*) desc;

-- 시도 구군 동 번지
--대전광역시 유성구 대덕대로989번길 9-12 ~ 25
--강원도 인제군 상남면 엄달골길 46 ~ 637
--서울특별시 노원구 동일로241가길 55
--서울특별시 강동구 구천면로34길 2 ~ 26
--서울특별시 강서구 방화대로 409
--광주광역시 북구 신임로31번길 3 ~ 78-4
select --substr(address, 1, 5)
        --instr(address, ' ')
        substr(address, 1, instr(address, ' ') -1 ), count(*)
from tbladdressbook;
group by substr(address, 1, instr(address, ' ') -1 ),
group by 



/*
having 절
- 조건절
- group by에 대한 조건절 > 집계 결과를 대상으로 조건을 질문

where 절
- 조건절
- from에 대한 조건절 > 레코드 하나 하나를 대상으로 조건을 질문
    
--GROUP BY 문법
SELECT 컬럼리스트
FROM 테이블명
WHERE 조건
GROUP BY 그룹 기준
HAVING 조건
ORDER BY 정렬;

--문법 내의 구문 실행 순서
***** select를 구성하는 모든 절들은 실행 순서가 있다. (불변) -> 무조건 암기
1. FROM절
2. WHERE절
3. GROUP BY절
4. HAVING절
5. SELECT절
6. ORDER BY절

A. FROM절 -> WHERE절 : 개인(레코드 1개씩)에 대한 조건
B. GROUP BY절 -> HAVING : 그룹(집계함수)에 대한 조건

*/

-- 각부서 인원수
--BUSEO             COUNT(*)
--------------- ----------
--총무부                   7
--개발부                  14
--영업부                  16
--기획부                   7
--인사부                   4
--자재부                   6
--홍보부                   6

-- basicpay 2000000이상인 부서의 인원수
--BUSEO             COUNT(*)
--------------- ----------
--총무부                   3
--개발부                   4
--영업부                   5
--기획부                   2
--인사부                   2
--자재부                   2
--홍보부                   1

--BUSEO             COUNT(*)
--------------- ----------
--총무부                   7
--영업부                  16
--기획부                   7
--인사부                   4

select buseo, count(*)
from tblinsa    --1(60명)을 가져온다
where basicpay > 2000000  --2(60명중에 basicpay > 2000000넘는 애들만 남겨온다.)
group by buseo  --3 (남겨온 애들중에서 그룹을 짓는다)
having avg(basicpay) > 2500000;     --4.(남겨온 애들 중에서 avg(basicpay) > 1500000 인 애들을 뽑아온다.

-- tblCountry. 대륙별로 최대 인구수, 최소 인구수, 평균 인구수 가져오시오.
select 
        max(population) as 최대인구수, 
        min(population) as 최소인구수, 
        avg(population) as 평균인구수
from tblcountry
group by continent;
-- hr.employees. 직업별(job_id) 직원수를 가져오시오.
select job_id, count(*)
from employees
group by job_id;

-- tblinsa. 부서별로 직원들의 급여 총합, 부서인원수, 최고급여액, 최저급여액 가져오시오.
select buseo, sum(basicpay), max(basicpay), min(basicpay)
from tblinsa
group by buseo;

-- tblAddressbook. 고향별(hometown) 인원수를 가져오시오. 정렬(인원수 내림차순)

select hometown, count(*)
from tbladdressbook
group by hometown
order by count(*)desc;

-- tblinsa. 부서별 직급의 인원수 가져오시오.

select buseo as 부서,
        count(*) as 인원, 
        count(decode(jikwi, '부장', 1)) as 부장,
        count(decode(jikwi, '과장', 1)) as 과장,
        count(decode(jikwi, '대리', 1)) as 대리,
        count(decode(jikwi, '사원', 1)) as 사원
from tblinsa
group by buseo;

select buseo, jikwi, count(*)
from tblinsa
group by buseo, jikwi
order by buseo, jikwi;

--부서별 남녀 인원수??
select buseo, substr(ssn, 8, 1)as 남자는1여자는2, count(*)
from tblinsa
group by buseo, substr(ssn, 8, 1)
order by buseo, substr(ssn, 8, 1);


/*

rollup()
- group by에서 사용
- group by의 결과에서 집계 결과를 더 자세하게 반환한다.

*/

select buseo, count(*), round(sum(basicpay)), round(avg(basicpay))
from tblinsa
group by rollup(buseo);

select buseo,
        jikwi,
        count(*), 
        round(sum(basicpay)), 
        round(avg(basicpay)),
        grouping_id(buseo, jikwi)
from tblinsa
group by cube(buseo, jikwi);


--1. traffic_accident. 각 교통 수단 별(지하철, 철도, 항공기, 선박, 자동차) 발생한 총 교통 사고 발생 수, 총 사망자 수, 사건 당 평균 사망자 수를 가져오시오.
SELECT
    TRANS_TYPE AS "교통 수단",
    SUM(TOTAL_ACCT_NUM) AS "총 교통 사고 발생 수",
    SUM(DEATH_PERSON_NUM) AS "총 사망자 수",
    ROUND(SUM(TOTAL_ACCT_NUM) / SUM(DEATH_PERSON_NUM), 1) AS "사건 당 사망자 수"
    FROM TRAFFIC_ACCIDENT
        GROUP BY TRANS_TYPE;

SELECT * FROM TRAFFIC_ACCIDENT;

--2. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.
SELECT * FROM TBLZOO;

SELECT
    FAMILY AS 종류,
    ROUND(AVG(LEG), 1) AS "평균 다리 갯수"
FROM TBLZOO
GROUP BY FAMILY;


--3. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.
SELECT * FROM TBLZOO;

SELECT
    THERMO AS 체온,
    BREATH AS 호흡,
    COUNT(*) AS "종들의 갯수"
FROM TBLZOO
    WHERE THERMO = 'variable'
    GROUP BY THERMO, BREATH;


--4. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.
SELECT * FROM TBLZOO;

SELECT
    SIZEOF,
    FAMILY,
    COUNT(*)
FROM TBLZOO
    GROUP BY SIZEOF, FAMILY;


--6. tblTodo. 완료한 일의 갯수와 완료하지 않은 일의 갯수를 가져오시오.
SELECT * FROM TBLTODO;

SELECT
    COUNT(CASE
        WHEN COMPLETEDATE IS NOT NULL THEN '1'
    END) AS 완료,
    COUNT(CASE
        WHEN COMPLETEDATE IS NULL THEN '1'
    END) AS 미완료
FROM TBLTODO;


--7. tblAddressBook. 서울에 사는 10대, 20대, 30대, 40대 인원수를 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    COUNT(CASE
        WHEN AGE BETWEEN 10 AND 19 THEN 1
    END) AS "10대",
    COUNT(CASE
        WHEN AGE BETWEEN 20 AND 29 THEN 1
    END) AS "20대",
    COUNT(CASE
        WHEN AGE BETWEEN 30 AND 39 THEN 1
    END) AS "30대",
    COUNT(CASE
        WHEN AGE BETWEEN 40 AND 49 THEN 1
    END) AS "40대"
FROM tblAddressBook
    WHERE ADDRESS LIKE '서울%';


--8. tblAddressBook. 현재 주소(address)와 고향(hometown)이 같은 지역인 사람들을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    *
FROM TBLADDRESSBOOK
WHERE SUBSTR(ADDRESS, 1, 2) = HOMETOWN;


--9. tblAddressBook. 역삼로에 사는 사람 중 gmail을 사용하는 사람들을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    *
FROM TBLADDRESSBOOK
WHERE ADDRESS LIKE '%역삼로%'
    AND EMAIL LIKE '%gmail%';

--11. tblAddressBook. 전화번호에 '123'이 들어간 사람 중 여학생만을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    *
FROM TBLADDRESSBOOK
WHERE TEL LIKE '%123%'
    AND GENDER = 'f';

--12. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    EMAIL
FROM TBLADDRESSBOOK
    GROUP BY EMAIL
        HAVING COUNT(*) > 2;

--15. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    SUBSTR(NAME, 1, 1),
    COUNT(*)
FROM TBLADDRESSBOOK
    GROUP BY SUBSTR(NAME, 1, 1)
        HAVING COUNT(SUBSTR(NAME, 1, 1)) >= 100;

--17. tblAddressBook. 이메일이 스네이크 명명법으로 만들어진 사람들 중에서 여자이며, 20대이며, 키가 150~160cm 사이며, 고향이 서울 또는 인천인 사람들만 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    *
FROM TBLADDRESSBOOK
WHERE INSTR(EMAIL, '_') > 0
    AND GENDER = 'f'
    AND AGE BETWEEN 20 AND 29
    AND HEIGHT BETWEEN 150 AND 160
    AND HOMETOWN IN ('서울', '인천');

--18. tblAddressBook. gmail.com을 사용하는 사람들의 성별 > 세대별(10,20,30,40대) 인원수를 가져오시오.
SELECT * FROM TBLADDRESSBOOK;

SELECT
    EMAIL
FROM TBLADDRESSBOOK
WHERE INSTR(EMAIL, 'gmail') > 0
    GROUP BY EMAIL;

--53. employees. 총 사원 수 및 2003, 2004, 2005, 2006 년도 별 고용된 사원들의 총 수를 가져오시오.


--55. employees. 직업이 'AD_PRESS' 인 사람은 A 등급을, 'ST_MAN' 인 사람은 B 등급을, 'IT_PROG' 인 사람은 C 등급을, 'SA_REP' 인 사람은 D 등급을, 'ST_CLERK' 인 사람은 E 등급을 기타는 0 을 부여하여 가져오시오.


