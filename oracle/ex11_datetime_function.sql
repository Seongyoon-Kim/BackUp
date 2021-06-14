-- ex11_datetime_function.sql

/*

날짜시간 함수

sysdate
- 현재 시스템의 시각을 반환
- date sysdate
- 자바의 Calendar.getInstance(), new Date()



*/

SELECT SYSDATE FROM DUAL;

/*

날짜 연산
- + 연산, - 연산
1. 시각 - 시각 = 시간 (단위: 일)
2. 시각 + 시간 = 시각
3. 시각 - 시간 = 시각

*/

-- 홍길동	08/10/11	21/05/17	4601

SELECT NAME, 
        IBSADATE AS 입사일, 
        SYSDATE AS 현재,
        ROUND(SYSDATE - IBSADATE) AS "근무기간(일)",
        ROUND((SYSDATE - IBSADATE) * 24) AS "근무기간(시)",
        ROUND((SYSDATE - IBSADATE) * 24 * 60) AS "근무기간(분)",
        ROUND((SYSDATE - IBSADATE) * 24 * 60 * 60) AS "근무기간(초)",
        ROUND((SYSDATE - IBSADATE) / 365) AS "근무기간(년)" -- 근사치
FROM TBLINSA;



-- 시각 + 시간(단위:일) = 시각
-- 시각 - 시간(단위:일) = 시각
SELECT
    SYSDATE,
    SYSDATE + 100,
    SYSDATE - 100,
    SYSDATE + (2 / 24) -- 2시간 뒤?
FROM DUAL;

/*

LAST_DAY()
- 해당 시각이 포함된 달의 마지막 날짜
- DATE LAST_DAY(DATE)

*/

SELECT
    SYSDATE, -- 21/05/17
    LAST_DAY(SYSDATE) -- 21/05/31
FROM DUAL;


/*

MONTHS_BETWEEN()
- 시각 - 시각 = 시간(단위: 일)
- 시각 - 시각 = 시간(단위: 월)

*/

SELECT
    NAME,
    IBSADATE AS 입사일,
    SYSDATE - IBSADATE AS "근무시간(일)",
    (SYSDATE - IBSADATE) / 30.4 AS "근무시간(월)",
    MONTHS_BETWEEN(SYSDATE, IBSADATE) AS "근무시간(월)",
    (SYSDATE - IBSADATE) / 365 AS "근무시간(년)",
    MONTHS_BETWEEN(SYSDATE, IBSADATE) / 12 AS "근무시간(년)"
FROM TBLINSA;





/*

ADD_MONTHS()
- NUMBER ADD_MONTHS(DATE, NUMBER)

*/

SELECT
    SYSDATE,
    SYSDATE + 31,
    ADD_MONTHS(SYSDATE, 1),
    SYSDATE + 100,
    ADD_MONTHS(SYSDATE, 12)
FROM DUAL;






/*

시각 - 시각 = 일(시, 분, 초)
시각 - 시각 = 월(년) -> MONTHS_BETWEEN

시각 + 시간(일) = 시각
시각 - 시간(일) = 시각
시각 + 시간(월) = 시각 -> ADD_MONTHS()
시각 - 시간(월) = 시각 -> ADD_MONTHS()

*/

-- 컬럼 리스트에서 사용
-- 조건절에서 사용
-- 정렬에서 사용
SELECT
    NAME,
    IBSADATE,
    CEIL(MONTHS_BETWEEN(SYSDATE, IBSADATE) / 12) AS 근무연차
FROM TBLINSA
WHERE MONTHS_BETWEEN(SYSDATE, IBSADATE) < (12 * 10);

































