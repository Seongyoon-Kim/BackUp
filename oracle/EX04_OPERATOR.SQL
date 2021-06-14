-- EX04_OPERATOR.SQL

/*

연산자, Operator

1. 산술 연산자
    - +, -, *, /
    - %(없음) -> 함수로 제공(mod() 함수)

2. 문자열 연산자
    - concat
    - '문자열' + '문자열' // X
    - '문자열' || '문자열' // O
    
3. 비교 연산자
    - >, >=, <, <=
    - =(==), <>(!=)
    - 논리값을 반환 > boolean 반환 > ANSI SQL은 논리형이 없다. > 표현이 불가능하다. > 결과셋에 담을 수 없다.
    - 조건에만 사용


*/


-- 산술 연산자
SELECT FIRST, LAST, LAST || FIRST, WEIGHT + 2, 10 + 1, '자바'
    FROM tblcomedian;
    
SELECT 10, '자바'
    FROM tblcomedian;
    
SELECT LAST || FIRST
    FROM tblcomedian;
    
SELECT LAST + FIRST
    FROM tblcomedian; -- ORA-01722: invalid number
    
SELECT CONCAT(LAST, FIRST)
    FROM tblcomedian;

    
SELECT *
    FROM tblcomedian;
    

-- 비교 연산의 결과는 논리형인데.. 논리형이 없어서 결과셋에 담지 못한다. (표현을 못한다.)
-- 비교 연산은 컬럼 리스트에 작성할 수 없다. (SELEXT절에 넣지 말것!)
SELECT FIRST, WEIGHT
    FROM tblcomedian
WHERE WEIGHT > 65;


-- 컬럼명 -> 식별자 -> WEIGHT OR WEIGHT - 5
SELECT NAME, WEIGHT, WEIGHT - 5
    FROM tblmen;
    
-- 컬럼의 별칭(Alias) 만들기
-- 1. 중복된 컬럼명을 구분하기 위해서
-- 2. 가공된 컬럼명을 유효하기 위해서
-- 3. 사용 불가능한 문자를 사용할 수 있게 > 사용하지 말것
-- 4. 예약어를 사용할 수 있게 > 절대 사용하지 말것
-- 별칭: 영어 + 숫자 + _ -> 조합


SELECT NAME, NAME AS NICK
    FROM TBLMEN;
    
SELECT LAST || FIRST AS NAME, 
        WEIGHT - 5 AS WEIGHT
    FROM tblcomedian;
    
SELECT NAME AS 사용자이름
    FROM tblmen;
    
SELECT NAME AS "사용자 이름"
    FROM tblmen;
    
SELECT NAME AS "SELECT"
    FROM TBLMEN;
















