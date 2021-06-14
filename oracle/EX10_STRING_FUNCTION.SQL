-- EX10_STRING_FUNCTION.SQL

/*

문자열 함수

upper(), lower(), initcap()
- varchar2 upper(컬럼명)
- varchar2 lower(컬럼명)
- varchar2 initcap(컬럼명)

*/

SELECT
    FIRST_NAME,
    UPPER(FIRST_NAME),
    LOWER(FIRST_NAME)
FROM EMPLOYEES;


SELECT INITCAP('ABC')
FROM DUAL;

-- 이름에 'an'이 포함 검색
SELECT
    FIRST_NAME
FROM EMPLOYEES
    WHERE FIRST_NAME LIKE '%AN%' OR FIRST_NAME LIKE '%an%' OR FIRST_NAME LIKE '%An%' OR FIRST_NAME LIKE '%aN%';
    
SELECT FIRST_NAME FROM EMPLOYEES
    WHERE UPPER(FIRST_NAME) LIKE '%AN%';
    
    
/*

SUBSTR()
- 문자열 추출함수
- VARCHAR2 SUBSTR(컬럼명, 시작위치, 가져올 문자개수)
- VARCHAR2 SUBSTR(컬럼명, 시작위치)
- 서수를 1부터 시작(**)

*/

SELECT
    '가나다라마바사아자차카타파하',
    SUBSTR('가나다라마바사아자차카타파하', 5, 3),
    SUBSTR('가나다라마바사아자차카타파하', 5)
FROM DUAL;


-- 남자 직원
SELECT COUNT(*)
FROM TBLINSA
WHERE SSN LIKE '%-1%';

SELECT COUNT(*)
FROM TBLINSA
WHERE SUBSTR(SSN, 8, 1) = '1';

SELECT COUNT(*)
FROM TBLINSA
WHERE SUBSTR(SSN, 8, 1) = '2';

SELECT COUNT(*)
FROM TBLINSA
WHERE SUBSTR(SSN, 8, 1) = '1' OR SUBSTR(SSN, 8, 1) = '3';

SELECT COUNT(*)
FROM TBLINSA
WHERE SUBSTR(SSN, 8, 1) IN ('2', '4');

SELECT
    NAME,
    SSN,
    CASE
        WHEN SUBSTR(SSN, 8, 1) = '1' THEN '남자'
        WHEN SUBSTR(SSN, 8, 1) IN ('2', '4') THEN '여자'
    END
FROM TBLINSA;

SELECT
    NAME,
    '19' || SUBSTR(SSN, 1, 2) AS BIRTHYEAR
FROM TBLINSA;

-- 장급(부장, 과장)들은 어떤 성을 가지고 있는지?
SELECT DISTINCT SUBSTR(NAME, 1, 1)
FROM TBLINSA
    WHERE JIKWI IN ('부장', '과장')
        ORDER BY SUBSTR(NAME, 1, 1);
        

-- 직원 성? 26가지
SELECT DISTINCT SUBSTR(NAME, 1, 1)
FROM TBLINSA;

-- 각각의 성이 몇명인지?
SELECT
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) = '김' THEN 1
    END) AS 김,
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) = '이' THEN 1
    END) AS 이,
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) = '박' THEN 1
    END) AS 박,
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) = '정' THEN 1
    END) AS 정,
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) = '최' THEN 1
    END) AS 최,
    COUNT(CASE
        WHEN SUBSTR(NAME, 1, 1) NOT IN ('김', '이', '박', '정', '최') THEN 1
    END) AS 나머지
FROM TBLINSA;

-- 태어난 월별 순으로 정렬
SELECT
    *
FROM TBLINSA
ORDER BY SUBSTR(SSN, 3, 2);


/*

LENGTH()
- 문자열 길이
- NUMBER LENGTH(컬럼명)

*/

-- 컬럼 리스트에서 사용
SELECT
    NAME,
    LENGTH(NAME)
FROM TBLCOUNTRY;


-- 조건절에서 사용
SELECT
    NAME
FROM TBLCOUNTRY
    WHERE LENGTH(NAME) > 3;
    
SELECT
    NAME
FROM TBLCOUNTRY
    WHERE LENGTH(NAME) BETWEEN 4 AND 6;
    
SELECT
    NAME,
    CAPITAL
FROM TBLCOUNTRY
    WHERE LENGTH(NAME) > LENGTH(CAPITAL);
    
SELECT
    NAME,
    LENGTH(NAME)
FROM TBLCOUNTRY
    ORDER BY LENGTH(NAME) DESC, NAME DESC;
    
    
SELECT
    CASE
        WHEN LENGTH(TITLE) >= 8 THEN SUBSTR(TITLE, 1, 8) || '...'
        ELSE TITLE
    END AS TITLE
FROM TBLTODO;


-- hr.employees
-- 1. 전체 이름(first_name + last_name : fullname)이 가장 긴->짧은 사람 순으로 가져오기
--      컬럼리스트 : first_name + last_name, length(fullename)
SELECT
    FIRST_NAME || ' ' || LAST_NAME AS FULLNAME,
    LENGTH(FIRST_NAME || ' ' || LAST_NAME) AS "LENGTH(FULLNAME)"
FROM EMPLOYEES
ORDER BY LENGTH(FIRST_NAME || ' ' || LAST_NAME) DESC;

-- 2. 전체 이름(first_name + last_name : fullname)이 가장 긴 사람이 몇글자? 가장 짧은 사람이 몇글자?
--      컬럼리스트 : 숫자만 출력
SELECT
    MAX(LENGTH(FIRST_NAME || LAST_NAME)) AS MAX,
    MIN(LENGTH(FIRST_NAME || LAST_NAME)) AS MIN
FROM EMPLOYEES;

-- 3. last_name이 4자인 사람들의 first_name이 궁금하다. 정렬 : first_name 길이 오름차순으로
SELECT
    FIRST_NAME,
    LENGTH(FIRST_NAME)
FROM EMPLOYEES
    WHERE LENGTH(LAST_NAME) = 4
        ORDER BY LENGTH(FIRST_NAME);



/*

INSTR()
- INDEXOF()
- 검색어의 위치를 반환
- ONE-BASED INDEX(서수가 1부터 시작)
- NUMBER INSTR(컬럼명, 검색어)
- NUMBER INSTR(컬럼명, 검색어, 시작위치)

*/

SELECT
    '안녕하세요. 홍길동님' AS C1,
    INSTR('안녕하세요. 홍길동님', '홍길동') AS C2,
    INSTR('안녕하세요. 홍길동님. 잘가세요. 홍길동님', '홍길동', 11) AS C3,
    INSTR('안녕하세요. 홍길동님. 잘가세요. 홍길동님', '홍길동', INSTR('안녕하세요. 홍길동님', '홍길동')) AS C4
FROM DUAL;


-- 제목입니다. -> (*)제목입니다.
SELECT
    CASE
        WHEN INSTR(TITLE, '자바') > 0 THEN '(*)' || TITLE
        ELSE TITLE
    END
FROM TBLTODO;


/*

LPAD(), RPAD(), LEFT PADDING, RIGHT PADDING
- VARCHAR2 LPAD(컬럼명, 개수, 문자)
- VARCHAR2 RPAD(컬럼명, 개수, 문자)

*/

SELECT
    '1',
    LPAD('1', 3, '0'), --***
    LPAD('1', 3, '*'),
    LPAD(' ', 20, '='),
    RPAD('1', 3, '0')
FROM DUAL;


/*

TRIM(), LTRIM(), RTRIM()
- varchar2 trim(컬럼명)
- varchar2 ltrim(컬럼명)
- varchar2 rtrim(컬럼명)

*/

SELECT
    '    하나    둘    셋    ',
    LTRIM('    하나    둘    셋    '),
    RTRIM('    하나    둘    셋    ')
FROM DUAL;


/*

replace()
- 문자열 치환
- varchar2 replace(컬럼명, 찾을 문자열, 바꿀 문자열)

*/

SELECT
    REPLACE('홍길동', '홍', '김'),
    REPLACE('홍길동', '이', '김')
FROM DUAL;

--TBLINSA. 직원명, 주민번호, 성별(남자, 여자)
SELECT
    NAME,
    SSN,
    SUBSTR(SSN, 8, 1)
FROM TBLINSA;

SELECT
    NAME,
    SSN,
    CASE
        WHEN SUBSTR(SSN, 8, 1) = '1' THEN '남자'
        WHEN SUBSTR(SSN, 8, 1) = '2' THEN '여자'
    END
FROM TBLINSA;

SELECT
    NAME,
    SSN,
    REPLACE(SUBSTR(SSN, 8, 1), '1', '남자')
FROM TBLINSA;

SELECT
    NAME,
    SSN,
    REPLACE(REPLACE(SUBSTR(SSN, 8, 1), '1', '남자'), '2', '여자')
FROM TBLINSA;

SELECT
    NAME,
    CASE
        WHEN CONTINENT = 'AS' THEN '아시아'
        WHEN CONTINENT = 'EU' THEN '유럽'
        WHEN CONTINENT = 'AF' THEN '아프리카'
        WHEN CONTINENT = 'AU' THEN '오세아니아'
        WHEN CONTINENT = 'SA' THEN '아메리카'
    END AS CONTINENT,
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONTINENT, 'AS', '아시아'), 'SA', '아메리카'), 'EU', '유럽'), 'AF', '아프리카'), 'AU', '오세아니아') AS CONTINENT2
FROM TBLCOUNTRY;


/*

decode()
- 문자열 치환
- replace() 유사
- varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열 -> 연달아서 사용 가능하다.)

*/

SELECT
    NAME,
    SSN,
    DECODE(SUBSTR(SSN, 8, 1), '1', '남자', '2', '여자'),
    REPLACE(SUBSTR(SSN, 8, 1), '1', '남자')
FROM TBLINSA;


SELECT
    NAME,
    CONTINENT,
    DECODE(CONTINENT, 'AS', '아시아', 'EU', '유럽', 'AF', '아프리카', 'AU', '호주', 'SA', '아메리카')
FROM TBLCOUNTRY;


-- 팁(**)
-- decode를 유용하게 써먹는 경우

SELECT *
FROM TBLCOMEDIAN;

SELECT count(*)
FROM TBLCOMEDIAN
WHERE GENDER = 'm';

SELECT COUNT(*)
FROM TBLCOMEDIAN
WHERE GENDER = 'f';


SELECT  COUNT(*) AS "전체 인원수",
        COUNT(CASE
            WHEN GENDER = 'm' THEN 1
        END) AS "남자 인원수",
        COUNT(*) - COUNT(CASE
            WHEN GENDER = 'm' THEN 1
        END) AS "여자 인원수"
FROM TBLCOMEDIAN;


SELECT
    COUNT(CASE
        WHEN GENDER = 'm' then 1
    END),
    COUNT(DECODE(GENDER, 'm', 1)),
    COUNT(DECODE(GENDER, 'f', 2))
FROM TBLCOMEDIAN;

-- CASE 풀이 OR DECODE 풀이
-- TBLINSA. 부장 몇명?, 과장 몇명?, 대리 몇명?, 사원 몇명?
SELECT
    COUNT(DECODE(JIKWI, '부장', 1)) AS 부장,
    COUNT(DECODE(JIKWI, '과장', 2)) AS 과장,
    COUNT(DECODE(JIKWI, '대리', 3)) AS 대리,
    COUNT(DECODE(JIKWI, '사원', 4)) AS 사원
FROM TBLINSA;

-- TBLADDRESSBOOK, JOB. 학생 몇명? 건물주 몇명?
SELECT
    COUNT(DECODE(JOB, '학생', 1)) AS 학생,
    COUNT(DECODE(JOB, '건물주', 1)) AS 건물주
FROM TBLADDRESSBOOK;

-- TBLADDRESSBOOK, ADDRESS. 강동구 몇명?, 마포구 몇명?

SELECT
    COUNT(CASE
        WHEN INSTR(ADDRESS, '강동구') > 0 THEN 1
    END) AS 강동구,
    COUNT(CASE
        WHEN INSTR(ADDRESS, '마포구') > 0 THEN 1
    END) AS 마포구
FROM TBLADDRESSBOOK;


SELECT
    COUNT(*) - COUNT(DECODE(INSTR(ADDRESS, '강동구'), 0, 1)) AS 강동구,
    COUNT(*) - COUNT(DECODE(INSTR(ADDRESS, '마포구'), 0, 1)) AS 마포구
FROM TBLADDRESSBOOK;

SELECT
    COUNT(CASE
        WHEN ADDRESS LIKE '%강동구%' THEN 1
    END) AS 강동구,
    COUNT(CASE
        WHEN ADDRESS LIKE '%마포구%' THEN 1
    END) AS 마포구
FROM TBLADDRESSBOOK;








