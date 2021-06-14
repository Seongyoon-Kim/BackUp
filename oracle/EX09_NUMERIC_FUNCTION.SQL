-- EX09_NUMERIC_FUNCTION.SQL

-- ex09_numeric_function.sql

/*
숫자 함수
- 자바 Math 클래스

round()
- 반올림 함수
- number round(컬럼명)
- number round(컬럼명, 소수이하 자릿수) : 실수 반환
- 숫자형, 날짜형

*/
select height, weight, height / weight, round(height / weight) 
from tblcomedian;

select first, 10 / 3 
from tblcomedian; --10

select 10 / 3 from tblinsa; --60

select 10 / 3 from tblinsa where name = '홍길동';

select * from dual; -- 시스템 테이블
select 10 / 3 from dual;

select round(987.645), round(987.654, 1), round(987.654, 2) from dual;

select round(avg(basicpay)) from tblinsa;

select round(name) from tblinsa;
select round(ibsadate), ibsadate from tblinsa;

select to_char(round(sysdate), 'yyyy-mm-dd hh24:mi:ss'), 
to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss')
from tblinsa;

select sysdate -- 현재 시각
    to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss')
from dual;

/*
floor(), trunc()
- 절삭 함수
- 무조건 내림 함수
- 자바의 정수/정수 -> 몫
- number floor(컬럼명)
- number trunc(컬럼명 [, 소수이하자릿수])
*/

select
    5.6789,
    round(5.6789),
    floor(5.6789),
    trunc(5.6789),
    trunc(5.6789, 1)
from dual;


/*

ceil()
- 무조건 올림 함수
- number ceil(컬럼명)


*/

SELECT
    3.1,
    ROUND(3.1),
    CEIL(3.1),
    CEIL(3.00000000000000000001),
    FLOOR(3.99999999999999999999)
FROM DUAL;


/*

mod()
- 나머지 함수
- number mod(피제수, 제수)


*/

SELECT MOD(10, 3)
FROM DUAL;

-- 100분 -> 1시간 40분
-- 100 / 60 -> 몫(시간)
-- 100 % 60 -> 나머지(분)

SELECT
    FLOOR(100 / 60) AS 시간,
    MOD(100, 60) AS 분
FROM DUAL;


SELECT
    ABS(-10),
    ABS(10),
    POWER(2, 8),
    SQRT(4)
FROM DUAL;













