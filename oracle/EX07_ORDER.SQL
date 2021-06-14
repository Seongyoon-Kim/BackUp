-- EX07_ORDER.SQL

/*

[WITH <Sub Query>]
SELECT column_list
FROM table_name
[WHERE search_condition]
[GROUP BY group_by_expression]
[HAVING serach_condition]
ORDER BY order_expression [ASC|DESC]


정렬, Sort
- order by절
- 레코드를 순서 정렬
- 원본 테이블의 레코드 정렬(XXX) - 오라클 데이터베이스에 있는 테이블 내의 레코드 순서는 우리가 손댈 수 없다.(절대)
- 원본 테이블 -> select -> 결과 테이블(결과셋)의 정렬(***)
- 오름차순, 내림차순
- 특정 컬럼값을 기준으로 레코드를 정렬한다.(*****)


SELECT 컬럼리스트
FROM 테이블명
WHERE 조건
ORDER BY 정렬기준


정렬의 기준이 될 수 있는 자료형(컬럼의 자료형)
1. 숫자형
    - 10 -> 20 -> 30
    - 30 -> 20 -> 10
    
2. 문자형
    - '가' -> '나' -> '다'
    - '다' -> '나' -> '가'
    
3. 날짜시간형
    - '2019' -> '2020' -> '2021'
    - '2021' -> '2020' -> '2019'
    
    
***** SELECT를 구성하는 모든 절들은 실행 순서가 있다. (불변) -> 무조건 암기(이해)
1. FROM절
2. WHERE절
3. SELECT절
4. ORDER BY절

*/

SELECT  *
FROM TBLCOMEDIAN;


SELECT  DISTINCT LAST || FIRST AS NAME,
        WEIGHT
FROM TBLCOMEDIAN
ORDER BY WEIGHT DESC; -- ASCENDING, DESCENDING


-- order by 대상 컬럼이 결과셋에 포함되지 않아도 상관없다. -> 보편적으로는 포함시킨다.

SELECT  DISTINCT LAST || FIRST AS NAME, -- 3. 원하는 컬럼만 선별
        WEIGHT,
        GENDER
FROM TBLCOMEDIAN            -- 1. 테이블 지정(전체 데이터)
WHERE GENDER = 'm'          -- 2. 원하는 레코드만 선별
ORDER BY WEIGHT DESC;       -- 4. 결과셋의 정렬


SELECT  NAME,
        BUSEO,
        JIKWI,
        CITY
FROM TBLINSA
    ORDER BY NAME;
    

-- 다중 정렬
SELECT  NAME,
        BUSEO,
        JIKWI,
        CITY
FROM TBLINSA
    --ORDER BY BUSEO; -- 1차 정렬(기준 1개)
    --ORDER BY BUSEO, JIKWI; -- 2차 정렬(기준 2개)
    ORDER BY BUSEO, JIKWI, CITY; -- 3차 정렬(기준 3개)
    --ORDER BY 2, 3, 4; -- 첨자로 컬럼을 지정 -> 사용 금지!!!!
    
    
---------- 고정된 컬럼을 정렬 기준으로 사용

---------- 계산된 값을 정렬 기준으로 사용


SELECT  NAME,
        BASICPAY,
        SUDANG,
        BASICPAY + SUDANG
FROM TBLINSA
    ORDER BY BASICPAY + SUDANG DESC; -- ***
    
    
SELECT  NAME,
        SUDANG,
        JIKWI,
        CASE
            WHEN JIKWI IN ('부장', '과장') THEN SUDANG * 2
            WHEN JIKWI IN ('대리', '사원') THEN SUDANG * 1.5
        END AS SUDANG2
FROM TBLINSA
    --ORDER BY SUDANG2 DESC;
    ORDER BY CASE
            WHEN JIKWI IN ('부장', '과장') THEN SUDANG * 2
            WHEN JIKWI IN ('대리', '사원') THEN SUDANG * 1.5
        END DESC;
        
-- 팁(*****)
-- 직위 정렬(부장, 과장, 대리, 사원) -> 가나다(X)
SELECT  NAME,
        BUSEO,
        JIKWI
--        CASE
--            WHEN JIKWI = '부장' THEN 1
--            WHEN JIKWI = '과장' THEN 2
--            WHEN JIKWI = '대리' THEN 3
--            WHEN JIKWI = '사원' THEN 4
--        END
FROM TBLINSA
    ORDER BY CASE
            WHEN JIKWI = '부장' THEN 1
            WHEN JIKWI = '과장' THEN 2
            WHEN JIKWI = '대리' THEN 3
            WHEN JIKWI = '사원' THEN 4
        END ASC;














