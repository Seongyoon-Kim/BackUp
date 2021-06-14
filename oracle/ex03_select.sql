-- ex03_select.sql

/*

select 문
- DML, DQL
- 데이터베이스로부터 원하는 데이터를 가져오는 명령어(읽기)

select 구문
[WITH <Sub Query>] - with절
SELECT column_list - select절
FROM table_name - from절
[WHERE search_condition]
[GROUP BY group_by_expression]
[HAVING serach_condition]
[ORDER BY order_expression [ASC|DESC]]


*/


SELECT *
    FROM TBLCOUNTRY;
    
    
SELECT *
    FROM TBLINSA;
    
    
SELECT *
    FROM TBLCOUNTRY;
    
-- 우리는 TBLCOUNTRY를 처음 봤음 -> TBLCOUNTRY 구조?? -> 구조 확인!!! -> 구조(컬럼 구성)
DESC TBLCOUNTRY; -- 표준 SQL(X), SQL(X), Sql*plus(전용 명령어), SQL Developer(Sqlplus 명령어 지원)


-- 동일한 컬럼을 여러번 반복해도 된다.
SELECT NAME, NAME, NAME, NAME
    FROM tblcountry;
    

-- 동일한 컬럼을 가져오는 경우.. 가공을 한다.
SELECT NAME, '나라명: ' || NAME -- || (문자열 더하기 연산자 -> concat 연산자)
    FROM TBLCOUNTRY;
    

SELECT *
    FROM TBLCOUNTRY; -- A.


SELECT NAME, CAPITAL, population, continent, area
    FROM tblcountry; -- B.
    
-- A와 B의 결과는 동일 > B 권장 > 가독성 차이


DESC TBLCOUNTRY;

-- 원본 테이블의 컬럼 순서와 SELECT절의 컬럼 순서는 전혀 무관하다. -> 보통 지키는 경우가 많다. -> 가독성
SELECT CAPITAL, population, continent, area, NAME
    FROM tblcountry;













































