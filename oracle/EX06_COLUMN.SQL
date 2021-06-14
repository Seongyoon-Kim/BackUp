-- EX06_COLUMN.SQL

/*

distinct
- 컬럼 리스트에 사용 -> 결과셋에서 하나의 컬럼으로 사용
- 중복값을 제거한다.
- distinct 컬럼명


*/

SELECT *
    FROM TBLCOUNTRY;
    
-- TBLCOUNTRY에는 어떤 대륙이 있나요? -> 분류 질문
SELECT DISTINCT CONTINENT
    FROM TBLCOUNTRY;
    

SELECT *
    FROM TBLINSA;
    
-- TBLINSA 어떤 부서가 있나요?
SELECT DISTINCT BUSEO
    FROM TBLINSA;
    
    
SELECT *
    FROM TBLINSA;
    
-- 중복값이 단 1개도 없어도 동작된다. > 중복값이 없는 컬럼에 DISTINCT를 적용하는건 의미가 없다.
SELECT DISTINCT NAME
    FROM TBLINSA;
    

-- 개발부 황진이
-- 개발부 채정희
SELECT DISTINCT BUSEO, NAME
    FROM TBLINSA;
    

-- 총무부 사원
-- 총무부 사원
-- 총무부 사원
SELECT BUSEO, JIKWI
    FROM TBLINSA; -- 60명

SELECT DISTINCT BUSEO, JIKWI
    FROM TBLINSA; -- 23명
    


-- 표
-- 1. 데이터 저장하는 표 > 
-- 2. 화면에 데이터를 출력하는 


/*

1. 자료형
    - number, varchar2, char, date
    
2. select
    a. from절
    b. select 컬럼 리스트 -> 별칭(Alias), 연산자
    c. where절 -> 연산자(산술, 비교, 논리), between, in, like, is null






case
- 모든 곳에서 사용이 가능
    - 컬럼 리스트에서 사용
    - 조건절에서 사용
    - 정렬에서 사용

- 자바의 if/switch와 비슷한 행동
- 문장의 단위의 제어(X) -> 값을 제어(O)
- 조건을 만족하지 못하는 컬럼은 null을 반환(***)

















*/

SELECT  LAST || FIRST AS NAME,
        GENDER
FROM tblcomedian;

SELECT  LAST || FIRST AS NAME,
        CASE
            WHEN GENDER = 'm' THEN '남자'
            WHEN GENDER = 'f' THEN '여자'
        END AS GENDER
FROM tblcomedian;


SELECT  NAME,
        CASE
            WHEN CONTINENT = 'AS' THEN '아시아'
            WHEN CONTINENT = 'EU' THEN '유럽'
            WHEN CONTINENT = 'AF' THEN '아프리카'
            --WHEN CONTINENT = 'AU' THEN '오세아니아'
            --WHEN CONTINENT = 'SA' THEN '남아메리카'
            --ELSE '기타'
            --WHEN CONTINENT = 'AU' THEN CONTINENT -- 조건의 반환값이 반드시 상수일 필요가 없다.
            --ELSE CONTINENT
            --ELSE CAPITAL -- 의미는 다른 항목들과 동일
            --ELSE POPULATION -- 자료형이 다른 항목들과 동일
            ELSE '기타'
        END AS CONTINENT
FROM TBLCOUNTRY;


SELECT  LAST || FIRST AS NAME,
        WEIGHT,
        CASE
            WHEN WEIGHT > 100 THEN '과체중'
            WHEN WEIGHT > 50 THEN '정상체중'
            WHEN WEIGHT > 0 THEN '저체중'
        END AS STATE,
        CASE
            WHEN WEIGHT BETWEEN 50 AND 100 THEN '정상체중'
            ELSE '비정상체중'
        END AS STATE2
FROM tblcomedian;


SELECT  TITLE,
        CASE
            WHEN COMPLETEDATE IS NULL THEN '미완료'
            WHEN COMPLETEDATE IS NOT NULL THEN '완료'
        END AS STATE
FROM tbltodo;


SELECT  NAME,
        JIKWI,
        CASE
            WHEN JIKWI IN ('과장', '부장') THEN '세단'
            WHEN JIKWI IN ('대리', '사원') THEN '경차'
        END AS CAR
FROM TBLINSA;


SELECT  NAME,
        BUSEO,
        JIKWI,
        -- 3년 미만: 주니어
        -- 3년 ~ 7년 미만: 시니어
        -- 7년 이상: 익스퍼트
        CASE
            WHEN IBSADATE > '2018-05-14' THEN '주니어'
            WHEN IBSADATE <= '2018-05-14' AND IBSADATE > '2014-05-14' THEN '시니어'
            WHEN IBSADATE <= '2014-05-14' THEN '익스퍼트'
        END AS STATE
FROM TBLINSA;


SELECT  NAME,
        CASE
            WHEN COUPLE IS NULL THEN '없음'
            WHEN COUPLE IS NOT NULL THEN '있음'
        END AS 여자친구
FROM TBLMEN;


-- TBLINSA. SUDANG
-- 결과셋: NAME, BUSEO, JIKWI, SUDANG, 추가수당(계산)
-- 정책: 직위별 수당 + A > 부장(X2), 과장(X1.7), 대리(X1.5), 사원(X1.3)
-- 정책: 직위별 수당 + A > 부장, 과장(X2), 대리, 사원(X1.5)

SELECT  NAME,
        BUSEO,
        JIKWI,
        SUDANG,
        CASE
            WHEN JIKWI = '부장' THEN SUDANG * 2
            WHEN JIKWI = '과장' THEN SUDANG * 1.7
            WHEN JIKWI = '대리' THEN SUDANG * 1.5
            WHEN JIKWI = '사원' THEN SUDANG * 1.3
        END AS 추가수당
FROM TBLINSA;


SELECT  NAME,
        BUSEO,
        JIKWI,
        SUDANG,
        CASE
            WHEN JIKWI IN ('부장', '과장') THEN SUDANG * 2
            WHEN JIKWI IN ('대리', '사원') THEN SUDANG * 1.5
        END AS 추가수당
FROM TBLINSA;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    