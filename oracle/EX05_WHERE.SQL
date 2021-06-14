-- EX05_WHERE.SQL

/*

Select문

[WITH <Sub Query>] - with절
SELECT column_list - select절
FROM table_name - from절
[WHERE search_condition]
[GROUP BY group_by_expression]
[HAVING serach_condition]
[ORDER BY order_expression [ASC|DESC]]


SELECT column_list
FROM table_name
WHERE search_condition;

***** SELECT를 구성하는 모든 절들은 실행 순서가 있다. (불변) -> 무조건 암기(이해)
1. FROM절
2. WHERE절
3. SELECT절

SELECT 컬럼리스트
FROM 테이블명
WHERE 검색조건;

WHERE절
- 가져올 레코드를 지정할 조건을 명시한다.
- 조건에 만족하는 행은 결과셋에 포함되고, 만족하지 못하는 행은 결과셋에 포함되지 않는다.
- 행 단위로 걸러낸다.
- 주로 조건을 비교 연산자 OR 논리 연산자를 사용해서 구성한다.


*/

-- 컬럼 선택 가능 + 레코드 선택 불가능 -> 항상 14개의 레코드 반환
SELECT *
    FROM tblcountry
WHERE CAPITAL = '서울';

SELECT *
    FROM tblcountry
WHERE AREA > 20;


SELECT *
    FROM tblinsa
WHERE CITY = '서울'; -- 20/60

SELECT *
    FROM tblinsa
WHERE BUSEO = '영업부'; -- 16/60

SELECT *
    FROM tblinsa
WHERE BASICPAY >= 2500000; -- 6/20

SELECT NAME, BUSEO, JIKWI, BASICPAY
    FROM tblinsa
WHERE BASICPAY >= 2500000; -- 원하는 행 + 열

SELECT *
    FROM tblinsa
WHERE CITY <> '서울';

SELECT *
    FROM tblinsa
WHERE CITY = '서울';


-- 논리 연산자
-- AND(&&), OR(||), NOT(!)

SELECT *
    FROM tblinsa
WHERE CITY = '서울' AND BUSEO = '영업부';

SELECT *
    FROM tblinsa
WHERE CITY = '서울' OR BUSEO = '영업부';

SELECT *
    FROM tblinsa
-- WHERE CITY <> '서울';
WHERE NOT (CITY = '서울'); -- 이런식으로 사용을 잘 안한다.


-- TBLCOMEDIAN
-- 몸무게가 60KG 이상이고, 키가 170CM 미만인 사람을 가져오시오.
SELECT *
    FROM tblcomedian
WHERE WEIGHT >= 60 AND HEIGHT < 170;


-- TBLINSA
-- 급여(BASICPAY)과 수당(SUDANG)을 모두 합한 금액이 200만원 이상인 직원을 가져오시오.
SELECT *
    FROM TBLINSA
WHERE (BASICPAY + SUDANG) >= 2500000;


/*

Between절
- where절에서 사용 > 조건으로 사용
- 범위 조건으로 사용
- 컬럼명 between 최솟값 and 최댓값
- 연산자 사용보다 가독성 향상(성능 더 느림)


*/

-- 몸무게가 60 ~ 70KG 사이에 있는 사람만
SELECT LAST || FIRST AS NAME, WEIGHT
    FROM tblcomedian
WHERE WEIGHT >= 60 AND WEIGHT <= 70; -- 3명

SELECT LAST || FIRST AS NAME, WEIGHT
    FROM tblcomedian
WHERE WEIGHT BETWEEN 64 AND 66; -- 3명


-- 비교 연산에 사용되는 자료형
-- 1. 숫자형(NUMBER)
SELECT NAME, SUDANG
    FROM TBLINSA
WHERE SUDANG > 150000;

SELECT NAME, SUDANG
    FROM TBLINSA
WHERE SUDANG >= 150000 AND SUDANG <= 160000;

SELECT NAME, SUDANG
    FROM TBLINSA
WHERE SUDANG BETWEEN 150000 AND 160000;


-- 2. 문자형
-- 자바: Char(O), String(X)
-- c > 'a'          "홍길동" > "아무개"
SELECT NAME
    FROM TBLINSA
WHERE NAME > '박';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME > 'M';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME >= 'M' AND FIRST_NAME <= 'O';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME BETWEEN 'M' AND 'O';


-- 3. 날짜/시간형
-- 자바: Calendar > Calendar -> tick > tick
SELECT NAME, IBSADATE
    FROM TBLINSA
WHERE IBSADATE > '2010-01-01';


SELECT NAME, IBSADATE
    FROM TBLINSA
WHERE IBSADATE <= '2010-01-01';


SELECT NAME, IBSADATE
    FROM TBLINSA
WHERE IBSADATE >= '2010-01-01' AND IBSADATE <= '2010-12-31';

SELECT NAME, IBSADATE
    FROM TBLINSA
WHERE IBSADATE BETWEEN '2010-01-01' AND '2010-12-31';



/*

in
- where절에서 사용 -> 조건으로 사용
- 열거형 조건 -> 제시된 조건 중 하나라도 일치하면 만족
- 컬럼형 in (값, 값, 값, ... 값)


*/

-- TBLINSA, 홍보부 + 개발부 + 총무부
SELECT *
    FROM tblinsa
WHERE BUSEO = '홍보부' OR BUSEO = '개발부' OR BUSEO = '총무부'; -- 27명


SELECT *
    FROM tblinsa
WHERE BUSEO IN ('홍보부', '개발부', '총무부') -- 27명


-- TBLINSA. (부장, 과장) + (서울, 인천) + 급여(250~260만원)
SELECT *
    FROM TBLINSA
WHERE JIKWI IN ('부장', '과장') AND CITY IN ('서울', '인천')
        AND BASICPAY BETWEEN 2500000 AND 2600000;
        
        
        
/*

like
- where절에서 사용 -> 조건으로 사용
- 패턴 비교(정규 표현식과 유사)
- 문자형을 대상으로 동작(숫자형, 날짜형은 적용 불가)
- 컬럼명 like '패턴 문자열'

패턴 문자열 구성 요소
1. _ : 임의의 문자 1개
2. % : 임의의 문자 N개(N: 0~무한대) -> ".*", ".{0,}"


*/

SELECT NAME
    FROM TBLINSA;
    
SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '홍길동';

SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '홍__'; -- 홍OO

SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '__신'; -- OO신

SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '_길_'; -- O길O

SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '김___';

SELECT NAME
    FROM TBLINSA
WHERE NAME LIKE '김__';


SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'E____';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'E%';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%e';

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%e%'; -- 이름에 e가 들어간 사람

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%ea%'; -- 이름에 ea가 들어간 사람

SELECT FIRST_NAME
    FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%e%a%';


/*

RDBMS에서의 null
- 자바의 null 개념과 유사
- 컬럼값이 비어있는 상태(셀)
- null 상수
- 대다수의 언어는 null을 피연산자로 사용할 수 없다.

null 조건
- where절 사용 -> 조건으로 사용
- 컬럼명 is null


*/


SELECT *
    FROM TBLCOUNTRY;
    
-- 인구수가 기재 되지 않은 나라?
SELECT *
    FROM TBLCOUNTRY
WHERE POPULATION IS NULL;

-- 인구수가 기재된 나라?
SELECT *
    FROM TBLCOUNTRY
WHERE POPULATION <> NULL; -- X

SELECT *
    FROM TBLCOUNTRY
WHERE POPULATION IS NOT NULL;


-- 할일
SELECT *
    FROM TBLTODO;
    
    
-- 아직 실행하지 못한 일은?
SELECT *
    FROM TBLTODO
WHERE COMPLETEDATE IS NULL;


-- 도서관 -> 도서 대여 테이블(대여 날짜, 반납 날짜)
-- 아직 반납이 안된 대여 기록?
SELECT *
    FROM 도서대여
WHERE 반납날짜 IS NULL;

-- 반납이 완료된 대여 기록?
SELECT *
    FROM 도서대여
WHERE 반납날짜 IS NOT NULL;

SELECT *
    FROM TBLMEN
WHERE COUPLE IS NULL;

SELECT *
    FROM TBLMEN
WHERE COUPLE IS NOT NULL;
    
SELECT *
    FROM TBLWOMEN
WHERE COUPLE IS NULL;

SELECT *
    FROM TBLWOMEN
WHERE COUPLE IS NOT NULL;
















