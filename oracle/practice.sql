d-- practice

SELECT FIRST_NAME, SUBSTR(FIRST_NAME, 2, 2), SUBSTR(FIRST_NAME, 3, 2), SUBSTR(FIRST_NAME, 4)
    FROM EMPLOYEES;
    
    
SELECT FIRST_NAME,
        SUBSTR(FIRST_NAME, -LENGTH(FIRST_NAME)),
        SUBSTR(FIRST_NAME, -LENGTH(FIRST_NAME), 2),
        SUBSTR(FIRST_NAME, -3)
FROM EMPLOYEES;


SELECT *
FROM EMPLOYEES
WHERE INSTR(FIRST_NAME, 'S') > 0;


SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%S%';


SELECT FIRST_NAME,
        LPAD(FIRST_NAME, 10, '#') AS LPAD_1,
        RPAD(FIRST_NAME, 10, '*') AS RPAD_1,
        LPAD(FIRST_NAME, 10) AS LPAD_2,
        RPAD(FIRST_NAME, 10) AS RPAD_2
FROM EMPLOYEES;


SELECT PHONE_NUMBER,
        RPAD(PHONE_NUMBER, 10, '#') AS RPAD_PHONE_NUMBER
FROM EMPLOYEES;


SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';


SELECT '[' || TRIM('  _ _Oracle_ _       ') || ']' AS TRIM,
        '[' || TRIM(LEADING FROM ' _ _ Oracle _ _ ') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING FROM ' _ _ Oracle _ _ ') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH FROM ' _ _ Oracle _ _ ') || ']' AS TRIM_BOTH
FROM DUAL;


SELECT  '[' || TRIM('_' FROM '_ _Oracle_ _') || ']' AS TRIM,
        '[' || TRIM(LEADING '_' FROM '_ _Oracle_ _') || ']' AS TRIM_LEADING,
        '[' || TRIM(TRAILING '_' FROM '_ _Oracle_ _') || ']' AS TRIM_TRAILING,
        '[' || TRIM(BOTH '_' FROM '_ _Oracle_ _') || ']' AS TRIM_BOTH
FROM DUAL;




SELECT  FIRST_NAME,
        UPPER(FIRST_NAME),
        LOWER(FIRST_NAME),
        INITCAP(EMAIL)
FROM EMPLOYEES;



SELECT  *
FROM EMPLOYEES
WHERE UPPER(FIRST_NAME) = UPPER('david');


SELECT  *
FROM EMPLOYEES
WHERE UPPER(FIRST_NAME) LIKE UPPER('%David%');

SELECT  FIRST_NAME,
        LENGTH(FIRST_NAME)
FROM EMPLOYEES;

SELECT  FIRST_NAME,
        LENGTH(FIRST_NAME)
    FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) >= 5;


SELECT  EMAIL,
        SUBSTR(EMAIL, 1, 2),
        SUBSTR(EMAIL, 3, 2),
        SUBSTR(EMAIL, 5)
FROM EMPLOYEES;

SELECT  EMAIL,
        SUBSTR(EMAIL, -LENGTH(EMAIL)),
        SUBSTR(EMAIL, -LENGTH(EMAIL), 2),
        SUBSTR(EMAIL, -3)
FROM EMPLOYEES;

SELECT  INSTR('HELLO, ORACLE!', 'L') AS INSTR_1,
        INSTR('HELLO, ORACLE!', 'L', 5) AS INSTR_2,
        INSTR('HELLO, ORACLE!', 'L', 2, 2) AS INSTR_3
FROM DUAL;

SELECT  *
FROM EMPLOYEES
WHERE INSTR(FIRST_NAME, 's') > 0;

SELECT  *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%S%' OR FIRST_NAME LIKE '%s%';

SELECT  '010-4928-5529' AS REPLACE_BEFORE,
        REPLACE('010-4928-5529', '-', ' ') AS REPLACE_1,
        REPLACE('010-4928-5529', '-') AS REPLACE_2
FROM DUAL;


SELECT  'ORACLE',
        LPAD('ORACLE', 10, '#') AS LPAD_1,
        RPAD('ORACLE', 10, '*') AS RPAD_1,
        LPAD('ORACLE', 10) AS LPAD_2,
        RPAD('ORACLE', 10) AS RAPD_2
FROM DUAL;

SELECT
        RPAD('940609-', 14, '*') AS RPAD_JMNO,
        RPAD('010-4928-', 13, '*') AS RAPD_PHONE
FROM DUAL;


SELECT  ROUND(1234.5678) AS ROUND,
        ROUND(1234.5678, 0) AS ROUND_0,
        ROUND(1234.5678, 1) AS ROUND_1,
        ROUND(1234.5678, 2) AS ROUND_2,
        ROUND(1234.5678, -1) AS ROUND_MINUS1,
        ROUND(1234.5678, -2) AS ROUND_MINUS2
    FROM DUAL;
    
SELECT  TRUNC(1234.5678) AS TRUNC,
        TRUNC(1234.5678, 0) AS TRUNC_0,
        TRUNC(1234.5678, 1) AS TRUNC_1,
        TRUNC(1234.5678, 2) AS TRUNC_2,
        TRUNC(1234.5678, -1) AS TRUNC_MINUS1,
        TRUNC(1234.5678, -2) AS TRUNC_MINUS2
    FROM DUAL;
    
SELECT  CEIL(3.14),
        FLOOR(3.14),
        CEIL(-3.14),
        FLOOR(-3.14)
    FROM DUAL;
    
SELECT  MOD(15, 6),
        MOD(10, 2),
        MOD(11, 2)
    FROM DUAL;
    
SELECT  SYSDATE AS NOW,
        SYSDATE - 1 AS YESTERDAY,
        SYSDATE + 1 AS TOMORROW
    FROM DUAL;
    
SELECT  SYSDATE,
        ADD_MONTHS(SYSDATE, 3)
    FROM DUAL;
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME || ' ' || LAST_NAME,
        HIRE_DATE,
        ADD_MONTHS(HIRE_DATE, 120) AS WORK10YEAR
    FROM EMPLOYEES;


SELECT  FIRST_NAME || ' ' || LAST_NAME,
        MONTHS_BETWEEN(HIRE_DATE, SYSDATE) AS MONTHS1,
        MONTHS_BETWEEN(SYSDATE, HIRE_DATE) AS MONTHS2,
        TRUNC(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) AS MONTHS3
FROM EMPLOYEES;


SELECT  SYSDATE,
        NEXT_DAY(SYSDATE, '수요일'),
        LAST_DAY(SYSDATE)
    FROM DUAL;
    
SELECT  SYSDATE,
        ROUND(SYSDATE, 'CC') AS FORMAT_CC,
        ROUND(SYSDATE, 'YYYY') AS FORMAT_YYYY,
        ROUND(SYSDATE, 'Q') AS FORMAT_Q,
        ROUND(SYSDATE, 'DDD') AS FORMAT_DDD,
        ROUND(SYSDATE, 'HH') AS FORMAT_HH
    FROM DUAL;
    
SELECT  TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS 현재날짜시간
    FROM DUAL;
    
SELECT  TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON') AS MON,
        TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
        TO_CHAR(SYSDATE, 'DD') AS DD,
        TO_CHAR(SYSDATE, 'DY') AS DY,
        TO_CHAR(SYSDATE, 'DAY') AS DAY
    FROM DUAL;
    
    
SELECT  SYSDATE,
        TO_CHAR(SYSDATE, 'MM') AS MM,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN') AS MON_KOR,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN,
        TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH') AS MON_ENG,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = KOREAN') AS MONTH_KOR,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = JAPANESE') AS MONTH_JPN,
        TO_CHAR(SYSDATE, 'MONTH', 'NLS_DATE_LANGUAGE = ENGLISH') AS MONTH_ENG
    FROM DUAL;
    
    
SELECT  SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS,
        TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM,
        TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM
    FROM DUAL;
    
    
SELECT  SALARY,
        TO_CHAR(SALARY, '$999,999') AS SAL_$,
        TO_CHAR(SALARY, 'L999,999') AS SAL_L,
        TO_CHAR(SALARY, '999,999.00') AS SAL_1,
        TO_CHAR(SALARY, '000,999,999.00') AS SAL_2,
        TO_CHAR(SALARY, '000999999.99') AS SAL_3,
        TO_CHAR(SALARY, '999,999,00') AS SAL_4
FROM EMPLOYEES;


SELECT  TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM DUAL;

SELECT  TO_DATE('2018-07-14', 'YYYY-MM-DD') AS TODATE1,
        TO_DATE('20180714', 'YYYY-MM-DD') AS TODATE2
    FROM DUAL;
    
SELECT  *
    FROM EMPLOYEES
WHERE HIRE_DATE > TO_DATE('2002/06/01', 'YYYY-MM-DD');

SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        SALARY,
        COMMISSION_PCT,
        SALARY + COMMISSION_PCT,
        NVL(COMMISSION_PCT, 0),
        SALARY + NVL(COMMISSION_PCT, 0)
    FROM EMPLOYEES;
    
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        COMMISSION_PCT,
        NVL2(COMMISSION_PCT, 'O', 'X'),
        NVL2(COMMISSION_PCT, SALARY * 12 + COMMISSION_PCT, SALARY * 12)
    FROM EMPLOYEES;
    
-- 사원번호, 이름, 직업, 급여, 직업에 따라 다른 급여
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        JOB_ID,
        SALARY,
        DECODE(JOB_ID,
                'SA_REP', SALARY * 1.1,
                'ST_CLERK', SALARY * 1.05,
                'ST_MAN', SALARY,
                SALARY * 1.03) AS UPSALARY
    FROM EMPLOYEES;
    
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        JOB_ID,
        SALARY,
        CASE
            WHEN JOB_ID = 'IT_PROG' THEN SALARY * 1.1
            WHEN JOB_ID = 'AD_VP' THEN SALARY * 1.05
            WHEN JOB_ID = 'ADPRES' THEN SALARY
            ELSE SALARY * 1.03
        END AS UPSALARY
    FROM EMPLOYEES;


-- 사원번호, 이름, 수당, 수당 변경
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        COMMISSION_PCT,
        CASE
            WHEN COMMISSION_PCT IS NULL THEN '해당사항 없음'
            WHEN COMMISSION_PCT = 0 THEN '수당 없음'
            WHEN COMMISSION_PCT > 0 THEN '수당: ' || COMMISSION_PCT
        END AS COMMISSION_PCT_TEXT
    FROM EMPLOYEES;
    
-- EMPNO, MASKING_EMPNO, ENAME, MASKING_ENAME
SELECT  EMPLOYEE_ID,
        RPAD(SUBSTR(EMPLOYEE_ID, 1, 1), LENGTH(EMPLOYEE_ID), '*') AS MASKING_EMPNO,
        FIRST_NAME,
        RPAD(SUBSTR(FIRST_NAME, 1, 1), LENGTH(FIRST_NAME), '*') AS MASKING_NAME
    FROM EMPLOYEES;
    
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        SALARY,
        ROUND(SALARY / 21.5, 1) AS DAY_PAY,
        TRUNC(SALARY / 21.5 / 8, 2) AS TIME_PAY
    FROM EMPLOYEES;
    
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        TO_CHAR(HIRE_DATE, 'YYYY-MM-DD'),
        TO_CHAR(NEXT_DAY(ADD_MONTHS(HIRE_DATE, 3), '월요일'), 'YYYY-MM-DD') AS R_JOB,
        CASE
            WHEN COMMISSION_PCT IS NULL THEN 'N/A'
        END
    FROM EMPLOYEES;
    
SELECT  EMPLOYEE_ID,
        FIRST_NAME,
        MANAGER_ID,
        CASE
            WHEN MANAGER_ID IS NULL THEN '0000'
            WHEN SUBSTR(MANAGER_ID, 1, 2) = '10' THEN '5555'
            WHEN SUBSTR(MANAGER_ID, 1, 2) = '11' THEN '6666'
            WHEN SUBSTR(MANAGER_ID, 1, 2) = '12' THEN '7777'
            WHEN SUBSTR(MANAGER_ID, 1, 2) = '14' THEN '8888'
            ELSE SUBSTR(MANAGER_ID, 1)
        END
    FROM EMPLOYEES;
    
SELECT *
FROM EMPLOYEES;


SELECT  TO_CHAR(SUM(SALARY), '$999,999') AS ALLSAL
    FROM EMPLOYEES;
    
SELECT  SUM(COMMISSION_PCT)
    FROM EMPLOYEES;
    
SELECT  SUM(DISTINCT SALARY),
        SUM(ALL SALARY),
        SUM(SALARY)
    FROM EMPLOYEES;
    
SELECT  *
    FROM EMPLOYEES;
    
SELECT COUNT(*)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  COUNT(DISTINCT SALARY),
        COUNT(ALL SALARY),
        COUNT(SALARY)
    FROM EMPLOYEES;
    
SELECT  COUNT(COMMISSION_PCT)
    FROM EMPLOYEES;
    
SELECT  COUNT(COMMISSION_PCT)
    FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

SELECT  MAX(SALARY)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  MIN(SALARY)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  MAX(HIRE_DATE)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  MIN(HIRE_DATE)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  TRUNC(MONTHS_BETWEEN(MAX(HIRE_DATE), MIN(HIRE_DATE)))
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  AVG(SALARY)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  ROUND(AVG(SALARY))
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;

SELECT  TRUNC(AVG(SALARY)), DEPARTMENT_ID
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY TRUNC(AVG(SALARY)) DESC;

SELECT DEPARTMENT_ID, JOB_ID, TRUNC(AVG(SALARY))
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID
ORDER BY TRUNC(AVG(SALARY)) DESC, DEPARTMENT_ID, JOB_ID;

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*), MAX(SALARY), SUM(SALARY), AVG(SALARY)
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*), MAX(SALARY), SUM(SALARY), AVG(SALARY)
    FROM EMPLOYEES
GROUP BY ROLLUP(DEPARTMENT_ID, JOB_ID);

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*), MAX(SALARY), SUM(SALARY), AVG(SALARY)
    FROM EMPLOYEES
GROUP BY CUBE(DEPARTMENT_ID, JOB_ID)
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*)
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, ROLLUP(JOB_ID);

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*)
    FROM EMPLOYEES
GROUP BY JOB_ID, ROLLUP(DEPARTMENT_ID);

SELECT DEPARTMENT_ID, JOB_ID, COUNT(*)
    FROM EMPLOYEES
GROUP BY GROUPING SETS(DEPARTMENT_ID, JOB_ID)
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT COUNT(*)
    FROM EMPLOYEES
WHERE DEPARTMENT_ID = '10';

SELECT COUNT(DISTINCT DEPARTMENT_ID)
    FROM EMPLOYEES;
    
SELECT DEPARTMENT_ID, JOB_ID, COUNT(*), MAX(SALARY), SUM(SALARY), AVG(SALARY),
        GROUPING(DEPARTMENT_ID),
        GROUPING(JOB_ID)
    FROM EMPLOYEES
GROUP BY CUBE(DEPARTMENT_ID, JOB_ID)
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT  DECODE(GROUPING(DEPARTMENT_ID), 1, 'ALL_DEPT', DEPARTMENT_ID) AS DEPNO,
        DECODE(GROUPING(JOB_ID), 1, 'ALL_JOB', JOB_ID) AS JOB,
        COUNT(*), MAX(SALARY), SUM(SALARY), AVG(SALARY)
    FROM EMPLOYEES
GROUP BY CUBE(DEPARTMENT_ID, JOB_ID)
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT  DEPARTMENT_ID,
        LISTAGG(FIRST_NAME, ', ')
        WITHIN GROUP(ORDER BY SALARY DESC) AS ENAMES
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, JOB_ID, MAX(SALARY)
    FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, JOB_ID
ORDER BY DEPARTMENT_ID, JOB_ID;

SELECT *
    FROM (SELECT DEPARTMENT_ID, JOB_ID, SALARY FROM EMPLOYEES)
    PIVOT(MAX(SALARY)
            FOR DEPARTMENT_ID IN (10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
            )
    ORDER BY JOB_ID;
    

select *
    from employees, departments
where employees.department_id = departments.department_id
    order by employee_id;
    

select *
    from employees e, departments d
where e.department_id = d.department_id
    order by employee_id;
    
    
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.LOCATION_ID
    FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
    ORDER BY EMPLOYEE_ID;
    
    
SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, D.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.LOCATION_ID
    FROM EMPLOYEES E, DEPARTMENTS D
WHERE   E.DEPARTMENT_ID = D.DEPARTMENT_ID
    AND SALARY >= 3000;
    
    
SELECT *
    FROM EMPLOYEES E, JOBS J
WHERE E.SALARY BETWEEN J.MIN_SALARY AND J.MAX_SALARY;



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID,
        E2.EMPLOYEE_ID AS MGR_ID, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1, EMPLOYEES E2
WHERE E1.MANAGER_ID = E2.EMPLOYEE_ID;



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID,
        E2.EMPLOYEE_ID AS MGR_ID, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1, EMPLOYEES E2
WHERE E1.MANAGER_ID = E2.EMPLOYEE_ID(+);



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID,
        E2.EMPLOYEE_ID AS MGR_ID, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1, EMPLOYEES E2
WHERE E1.MANAGER_ID(+) = E2.EMPLOYEE_ID;



SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.JOB_ID, E.HIRE_DATE, E.SALARY, E.COMMISSION_PCT, DEPARTMENT_ID,
        D.DEPARTMENT_NAME, D.LOCATION_ID
    FROM EMPLOYEES E JOIN DEPARTMENTS D USING (DEPARTMENT_ID)
WHERE SALARY >= 3000
ORDER BY DEPARTMENT_ID, E.EMPLOYEE_ID;



SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.JOB_ID, E.MANAGER_ID, E.HIRE_DATE, E.SALARY, E.DEPARTMENT_ID,
        D.DEPARTMENT_NAME, D.LOCATION_ID
    FROM EMPLOYEES E JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
WHERE SALARY >= 3000
ORDER BY E.DEPARTMENT_ID, EMPLOYEE_ID;



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E2.EMPLOYEE_ID AS MGR_EMPNO, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1 LEFT OUTER JOIN EMPLOYEES E2 ON (E1.MANAGER_ID = E2.EMPLOYEE_ID)
ORDER BY E1.EMPLOYEE_ID;



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E2.EMPLOYEE_ID AS MGR_EMPNO, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1 RIGHT OUTER JOIN EMPLOYEES E2 ON (E1.MANAGER_ID = E2.EMPLOYEE_ID)
ORDER BY E1.EMPLOYEE_ID, MGR_EMPNO;



SELECT E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E2.EMPLOYEE_ID AS MGR_EMPNO, E2.FIRST_NAME AS MGR_NAME
    FROM EMPLOYEES E1 FULL OUTER JOIN EMPLOYEES E2 ON (E1.MANAGER_ID = E2.EMPLOYEE_ID)
ORDER BY E1.EMPLOYEE_ID;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY
    FROM DEPARTMENTS D, EMPLOYEES E
WHERE D.DEPARTMENT_ID = E.DEPARTMENT_ID
    AND SALARY > 2000;
    
    
    
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY
    FROM DEPARTMENTS D JOIN EMPLOYEES E ON (D.DEPARTMENT_ID = E.DEPARTMENT_ID)
WHERE SALARY > 3000;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, TRUNC(AVG(E.SALARY)), MAX(E.SALARY), MIN(E.SALARY)
    FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME
ORDER BY D.DEPARTMENT_ID;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, TRUNC(AVG(E.SALARY)), MAX(E.SALARY), MIN(E.SALARY)
    FROM EMPLOYEES E JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME
ORDER BY D.DEPARTMENT_ID;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E.EMPLOYEE_ID, E.FIRST_NAME, E.JOB_ID, E.SALARY
    FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID(+) = D.DEPARTMENT_ID
ORDER BY D.DEPARTMENT_ID, E.FIRST_NAME;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E.EMPLOYEE_ID, E.FIRST_NAME, E.JOB_ID, E.SALARY
    FROM EMPLOYEES E FULL OUTER JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY D.DEPARTMENT_ID, E.FIRST_NAME;



SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E1.SALARY,
        D.DEPARTMENT_ID, MIN(E1.SALARY), MAX(E1.SALARY), E2.EMPLOYEE_ID AS MGR_EMPNO, E2.FIRST_NAME AS MGR_ENAME
    FROM EMPLOYEES E1, EMPLOYEES E2, DEPARTMENTS D
WHERE E1.MANAGER_ID = E2.EMPLOYEE_ID
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E1.SALARY,
        D.DEPARTMENT_ID, E2.EMPLOYEE_ID, E2.FIRST_NAME;
        
        
        
SELECT D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E1.SALARY,
        D.DEPARTMENT_ID, MIN(E1.SALARY), MAX(E1.SALARY), E2.EMPLOYEE_ID AS MGR_EMPNO, E2.FIRST_NAME AS MGR_ENAME
    FROM EMPLOYEES E1 JOIN EMPLOYEES E2 ON (E1.MANAGER_ID = E2.EMPLOYEE_ID), DEPARTMENTS D
GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME, E1.EMPLOYEE_ID, E1.FIRST_NAME, E1.MANAGER_ID, E1.SALARY,
        D.DEPARTMENT_ID, E2.EMPLOYEE_ID, E2.FIRST_NAME;
        
        
        
CREATE TABLE DEPT_TMP
    AS SELECT * FROM DEPARTMENTS;
    
SELECT * FROM DEPT_TMP;

INSERT INTO DEPT_TMP (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
    VALUES (50, 'DATABASE', 200, 1900);
    
SELECT * FROM DEPT_TMP;

INSERT INTO DEPT_TMP VALUES(60, 'NETWORK', 300, 1800);

SELECT * FROM DEPT_TMP;



INSERT INTO DEPT_TMP (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
        VALUES (70, 'WEB', NULL, 1000);
        
SELECT * FROM DEPT_TMP;


INSERT INTO DEPT_TMP (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)
        VALUES (90, 'NETWORK', 1000);
        
SELECT * FROM DEPT_TMP;

DROP TABLE EMP_EMP;

CREATE TABLE EMP_TMP
    AS SELECT * FROM EMPLOYEES
        WHERE 1 <> 1;
        
SELECT * FROM EMP_TMP;
SELECT * FROM EMPLOYEES;

INSERT INTO EMP_TMP (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID,
SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
    SELECT E.EMPLOYEE_ID, E.FIRST_NAME, E.LAST_NAME, E.EMAIL, E.PHONE_NUMBER, E.HIRE_DATE, E.JOB_ID,
    E.SALARY, E.COMMISSION_PCT, E.MANAGER_ID, E.DEPARTMENT_ID
    FROM EMPLOYEES E, JOBS J
    WHERE E.SALARY BETWEEN J.MIN_SALARY AND J.MAX_SALARY;

SELECT * FROM EMP_TMP;

DROP TABLE DEPT_TMP;

CREATE TABLE DEPT_TEMP
    AS SELECT * FROM DEPARTMENTS;
    
SELECT * FROM DEPT_TEMP;

UPDATE DEPT_TEMP
    SET LOCATION_ID = 1000;
    
SELECT * FROM DEPT_TEMP;

ROLLBACK;

UPDATE DEPT_TEMP
    SET LOCATION_ID = 1000,
        DEPARTMENT_NAME = 'DATABASE'
    WHERE DEPARTMENT_ID = 40;
    
SELECT * FROM DEPT_TEMP;


UPDATE DEPT_TEMP
    SET (DEPARTMENT_NAME, LOCATION_ID) = (SELECT DEPARTMENT_NAME, LOCATION_ID FROM DEPARTMENTS WHERE DEPARTMENT_ID = 40)
WHERE DEPARTMENT_ID = 40;

SELECT * FROM DEPT_TEMP;


UPDATE DEPT_TEMP
    SET LOCATION_ID = 1000
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_NAME = 'Human Resources');

SELECT * FROM DEPT_TEMP;


CREATE TABLE EMP_TEMP
    AS SELECT * FROM EMPLOYEES;
    
SELECT * FROM EMP_TEMP;

DELETE FROM EMP_TEMP
    WHERE JOB_ID = 'AD_VP';
    
SELECT * FROM EMP_TEMP;


CREATE TABLE CHAP10HW_EMP AS SELECT * FROM EMPLOYEES;

CREATE TABLE CHAP10HW_DEPT AS SELECT * FROM DEPARTMENTS;

CREATE TABLE CHAP10H2_SALGRADE AS SELECT * FROM JOBS;

SELECT * FROM CHAP10HW_DEPT;

INSERT INTO CHAP10HW_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)
        VALUES (50, 'ORACLE', 1000);

INSERT INTO CHAP10HW_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)
        VALUES (60, 'SQL', 2000);
        
INSERT INTO CHAP10HW_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)
        VALUES (70, 'SELECT', 1500);
        
INSERT INTO CHAP10HW_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID)
        VALUES (80, 'DML', 1300);
        
SELECT * FROM CHAP10HW_DEPT;



SELECT * FROM EMPLOYEES;


SELECT
    SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'Lex';

SELECT
    *
FROM EMPLOYEES
WHERE SALARY > (SELECT
    SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'Lex');


SELECT
    HIRE_DATE
FROM EMPLOYEES
WHERE FIRST_NAME = 'Neena';

SELECT
    *
FROM EMPLOYEES
WHERE HIRE_DATE < (SELECT HIRE_DATE FROM EMPLOYEES WHERE FIRST_NAME = 'Neena');


SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT
    E.EMPLOYEE_ID, E.FIRST_NAME, E.JOB_ID, E.SALARY, D.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.LOCATION_ID
FROM EMPLOYEES E, DEPARTMENTS D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
    AND E.DEPARTMENT_ID = 50
    AND E.SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);
    
    
SELECT *
    FROM EMPLOYEES
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID = 50 ORDER BY SALARY DESC;

SELECT *
    FROM EMPLOYEES
WHERE SALARY > ANY (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID = 50);

SELECT *
    FROM EMPLOYEES
WHERE SALARY > ALL (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID = 50);



SELECT
    *
FROM EMPLOYEES
WHERE (DEPARTMENT_ID, SALARY) IN (SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);




SELECT
    E10.EMPLOYEE_ID, E10.FIRST_NAME, E10.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.LOCATION_ID
FROM (SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 30) E10,
        (SELECT * FROM DEPARTMENTS) D
WHERE E10.DEPARTMENT_ID = D.DEPARTMENT_ID;



WITH
E10 AS (SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 50),
D AS (SELECT * FROM DEPARTMENTS)
SELECT E10.EMPLOYEE_ID, E10.FIRST_NAME, E10.DEPARTMENT_ID, D.DEPARTMENT_NAME, D.LOCATION_ID
    FROM E10, D
    WHERE E10.DEPARTMENT_ID = D.DEPARTMENT_ID;
    
    
    
SELECT
     EMPLOYEE_ID, FIRST_NAME, JOB_ID, DEPARTMENT_ID, (SELECT DEPARTMENT_NAME FROM DEPARTMENTS WHERE E.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID) AS DNAME
    FROM EMPLOYEES E;
    
    
    
    
SELECT * FROM EMPLOYEES;

SELECT
    JOB_ID
FROM EMPLOYEES
WHERE FIRST_NAME = 'Irene';

SELECT
    E.JOB_ID, E.EMPLOYEE_ID, E.FIRST_NAME, E.SALARY, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
    FROM EMPLOYEES E, DEPARTMENTS D
    WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID
            AND JOB_ID = (SELECT
                                JOB_ID
                            FROM EMPLOYEES
                                WHERE FIRST_NAME = 'Irene');
                                
                                
SELECT * FROM DEPARTMENTS;
SELECT AVG(SALARY) FROM EMPLOYEES;

SELECT
    E.EMPLOYEE_ID, E.FIRST_NAME, D.DEPARTMENT_NAME, E.HIRE_DATE, D.LOCATION_ID, E.SALARY
FROM EMPLOYEES E, DEPARTMENTS D
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
    AND E.DEPARTMENT_ID = D.DEPARTMENT_ID
        ORDER BY E.SALARY DESC, E.EMPLOYEE_ID;
        
    

SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 50;
SELECT DISTINCT JOB_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = 80;
SELECT DISTINCT JOB_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = 50;

SELECT * FROM EMP WHERE DEPTNO = 10;
SELECT JOB FROM EMP WHERE DEPTNO = 30;

SELECT
    (SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC FROM EMP WHERE DEPTNO = 10)
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND JOB NOT IN (SELECT JOB FROM EMP WHERE DEPTNO = 30);
    
    
SELECT * FROM TBLINSA ORDER BY BASICPAY DESC;

SELECT
    MAX(BASICPAY)
FROM TBLINSA
WHERE JIKWI = '대리';

SELECT
    NUM, NAME, JIKWI, BASICPAY
FROM TBLINSA
    WHERE BASICPAY > (SELECT
                        MAX(BASICPAY)
                            FROM TBLINSA
                                WHERE JIKWI = '대리')
        ORDER BY NUM;
        
        
SELECT
    NUM, NAME, JIKWI, BASICPAY
FROM TBLINSA
    WHERE BASICPAY > 2100000
        ORDER BY NUM;
        
        
        
        
CREATE TABLE DEPARTMENTS_TEMP
    AS SELECT * FROM DEPARTMENTS;
    
SELECT * FROM DEPARTMENTS_TEMP;

INSERT INTO DEPARTMENTS_TEMP (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
    VALUES (280, 'Sales', NULL, 1700);
    
    
    
    
CREATE TABLE TBLINSA_TEMP
    AS SELECT * FROM TBLINSA
        WHERE 1 <> 1;
        
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA_TEMP;

INSERT INTO TBLINSA_TEMP (NUM, NAME, SSN, IBSADATE, CITY, TEL, BUSEO, JIKWI, BASICPAY, SUDANG)
        SELECT T.NUM, T.NAME, T.SSN, T.IBSADATE, T.CITY, T.TEL, T.BUSEO, T.JIKWI, T.BASICPAY, T.SUDANG
            FROM TBLINSA T
                WHERE T.BASICPAY BETWEEN 1000000 AND 2000000;
                
UPDATE TBLINSA_TEMP
    SET CITY = '서울';

SELECT * FROM TBLINSA_TEMP;
ROLLBACK;

UPDATE TBLINSA_TEMP
    SET CITY = (SELECT CITY FROM TBLINSA WHERE NUM = 1005)
    WHERE CITY = 'SEOUL';
    
UPDATE TBLINSA_TEMP
    SET CITY = 'SEOUL'
WHERE NUM = (SELECT NUM FROM TBLINSA WHERE NAME = '한석봉');

DELETE FROM TBLINSA_TEMP
 WHERE BUSEO IN (SELECT BUSEO FROM TBLINSA_TEMP WHERE BASICPAY BETWEEN 1000000 AND 1500000 AND BUSEO = '영업부');
 
SELECT BUSEO FROM TBLINSA_TEMP WHERE BASICPAY BETWEEN 1000000 AND 1500000 AND BUSEO = '영업부';






SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME || ' ' || E.LAST_NAME AS NAME,
    E.JOB_ID,
    E.MANAGER_ID,
    E.SALARY,
    E.COMMISSION_PCT,
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    D.LOCATION_ID,
    L.CITY,
    L.POSTAL_CODE
FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
            INNER JOIN LOCATIONS L
                ON D.LOCATION_ID = L.LOCATION_ID;
                
                
                
                
SELECT
    E1.EMPLOYEE_ID,
    E1.FIRST_NAME || ' ' || E1.LAST_NAME AS NAME,
    E1.MANAGER_ID,
    E2.EMPLOYEE_ID AS MGR_EMPNO,
    E2.FIRST_NAME || ' ' || E2.LAST_NAME AS MGR_ENAME
FROM EMPLOYEES E1
    LEFT OUTER JOIN EMPLOYEES E2
        ON E1.MANAGER_ID = E2.EMPLOYEE_ID;
        
        

SELECT
    E1.EMPLOYEE_ID,
    E1.FIRST_NAME || ' ' || E1.LAST_NAME AS NAME,
    E1.MANAGER_ID,
    E2.EMPLOYEE_ID AS MGR_EMPNO,
    E2.FIRST_NAME || ' ' || E2.LAST_NAME AS MGR_ENAME
FROM EMPLOYEES E1
    RIGHT OUTER JOIN EMPLOYEES E2
        ON E1.MANAGER_ID = E2.EMPLOYEE_ID;
        
        
        
        
SELECT
    E1.EMPLOYEE_ID,
    E1.FIRST_NAME || ' ' || E1.LAST_NAME AS NAME,
    E1.MANAGER_ID,
    E2.EMPLOYEE_ID AS MGR_EMPNO,
    E2.FIRST_NAME || ' ' || E2.LAST_NAME AS MGR_ENAME
FROM EMPLOYEES E1
    FULL OUTER JOIN EMPLOYEES E2
        ON E1.MANAGER_ID = E2.EMPLOYEE_ID;
        
        
        


SELECT * FROM EMPLOYEES;

SELECT
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    E.EMPLOYEE_ID,
    E.FIRST_NAME || ' ' || E.LAST_NAME,
    E.SALARY
FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
            WHERE E.SALARY > 15000;
            
            

SELECT
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    TRUNC(AVG(E.SALARY)),
    MAX(E.SALARY),
    MIN(E.SALARY),
    COUNT(*)
FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
            GROUP BY D.DEPARTMENT_ID, D.DEPARTMENT_NAME
                ORDER BY D.DEPARTMENT_ID, TRUNC(AVG(E.SALARY));
                
                
                
                
SELECT
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    E.EMPLOYEE_ID,
    E.FIRST_NAME || ' ' || E.LAST_NAME,
    E.JOB_ID,
    E.SALARY
FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;
        
        
        
        
SELECT
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    E.EMPLOYEE_ID,
    E.FIRST_NAME || ' ' || E.LAST_NAME,
    E.MANAGER_ID,
    E.SALARY,
    E.DEPARTMENT_ID
FROM EMPLOYEES E
    RIGHT OUTER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;
            
SELECT * FROM SALARYGRADE;




SELECT * FROM TBLCUSTOMER;
SELECT * FROM TBLSALES;

SELECT
    C.NAME,
    C.ADDRESS,
    S.ITEM,
    S.QTY
FROM TBLCUSTOMER C
    INNER JOIN TBLSALES S
        ON C.SEQ = S.CSEQ;
        
        
SELECT
    ITEM,
    QTY,
    (SELECT NAME FROM TBLCUSTOMER WHERE TBLCUSTOMER.SEQ = TBLSALES.CSEQ) AS NAME,
    (SELECT ADDRESS FROM TBLCUSTOMER WHERE TBLCUSTOMER.SEQ = TBLSALES.CSEQ) AS ADDRESS
FROM TBLSALES;




SELECT * FROM TBLSTAFF;
SELECT * FROM TBLPROJECT;

SELECT
    S.NAME,
    S.SALARY,
    S.ADDRESS,
    P.PROJECT
FROM TBLSTAFF S
    INNER JOIN TBLPROJECT P
        ON S.SEQ = P.STAFF_SEQ;
        
        
SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMEN;

SELECT
    M.NAME AS 남자,
    M.AGE AS 남자나이,
    W.NAME AS 여자,
    W.AGE AS 여자나이
FROM TBLMEN M
    INNER JOIN TBLWOMEN W
        ON M.COUPLE = W.NAME;
        
        

SELECT
    M.NAME AS 남자,
    M.AGE AS 남자나이,
    W.NAME AS 여자,
    W.AGE AS 여자나이
FROM TBLMEN M
    LEFT OUTER JOIN TBLWOMEN W
        ON M.COUPLE = W.NAME;
        
        
        
SELECT
    M.NAME AS 남자,
    M.AGE AS 남자나이,
    W.NAME AS 여자,
    W.AGE AS 여자나이
FROM TBLMEN M
    RIGHT OUTER JOIN TBLWOMEN W
        ON M.COUPLE = W.NAME;
        
        
        
SELECT
    M.NAME AS 남자,
    M.AGE AS 남자나이,
    W.NAME AS 여자,
    W.AGE AS 여자나이
FROM TBLMEN M
    FULL OUTER JOIN TBLWOMEN W
        ON M.COUPLE = W.NAME;
        
        
        
        
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

SELECT
    e.first_name || ' ' || e.last_name as name,
    d.department_name,
    l.city || ' ' || l.street_address
FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D
        ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
            INNER JOIN LOCATIONS L
                ON D.LOCATION_ID = L.LOCATION_ID;




SELECT * FROM TBLGENRE;
SELECT * FROM TBLVIDEO;
SELECT * FROM TBLRENT;
SELECT * FROM TBLMEMBER;

SELECT
    *
FROM TBLGENRE G
    INNER JOIN TBLVIDEO V
        ON G.SEQ = V.GENRE;

SELECT
    *
FROM TBLGENRE G
    INNER JOIN TBLVIDEO V
        ON G.SEQ = V.GENRE
            INNER JOIN TBLRENT R
                ON V.SEQ = R.VIDEO;


SELECT
    G.PRICE AS 가격,
    G.PERIOD AS 대여기간,
    V.NAME AS 비디오제목,
    M.NAME AS 회원명,
    R.RENTDATE AS 대여날짜,
FROM TBLGENRE G
    INNER JOIN TBLVIDEO V
        ON G.SEQ = V.GENRE
            INNER JOIN TBLRENT R
                ON V.SEQ = R.VIDEO
                    INNER JOIN TBLMEMBER M
                        ON R.MEMBER = M.SEQ;
                        
                        

SELECT
    M.NAME AS 이름,
    V.NAME AS 비디오제목,
    R.RETDATE AS 반납여부
FROM TBLMEMBER M
    LEFT OUTER JOIN TBLRENT R
        ON M.SEQ = R.MEMBER
            RIGHT OUTER JOIN TBLVIDEO V
                ON V.SEQ = R.VIDEO;
                
                
                
SELECT
    DISTINCT
    M.NAME AS 이름,
    CASE
        WHEN R.RENTDATE IS NULL THEN '비우량회원'
        WHEN R.RENTDATE IS NOT NULL THEN '우량회원'
    END AS 종류
FROM TBLMEMBER M
    LEFT OUTER JOIN TBLRENT R
        ON M.SEQ = R.MEMBER
            ORDER BY 종류 DESC;
            
            
    
SELECT * FROM TBLVIDEO;
SELECT * FROM TBLRENT;

SELECT
    V.NAME AS 이름,
    COUNT(R.RENTDATE) AS 대여횟수
FROM TBLVIDEO V
    LEFT OUTER JOIN TBLRENT R
        ON V.SEQ = R.VIDEO
            GROUP BY V.NAME
                ORDER BY 대여횟수 DESC, V.NAME;
                
                
                
SELECT * FROM TBLMEN;
SELECT * FROM TBLWOMEN;

SELECT
    M.NAME AS 남자,
    W.NAME AS 여자
FROM TBLMEN M
    RIGHT OUTER JOIN TBLWOMEN W
        ON M.COUPLE = W.NAME;



SELECT * FROM TBLSELF;

SELECT
    S1.NAME,
    S1.DEPARTMENT,
    S2.NAME
FROM TBLSELF S1
    FULL OUTER JOIN TBLSELF S2
        ON S1.SUPER = S2.SEQ;



set serveroutput on;


begin
    dbms_output.put_line('Hello, PL/SQL');
end;
/


declare
    v_empno number(4) := 7788;
    v_ename varchar2(10);
begin
    v_ename := 'SCOTT';
    
    dbms_output.put_line('v_empno: ' || v_empno);
    dbms_output.put_line('v_ename: ' || v_ename);
    
end;
/

SELECT * FROM DEPARTMENTS;

declare
    V_SCORE NUMBER := 71;
begin

    CASE
        WHEN V_SCORE >= 90 THEN dbms_output.put_line('A학점');
        WHEN V_SCORE >= 80 THEN dbms_output.put_line('B학점');
        WHEN V_SCORE >= 70 THEN dbms_output.put_line('C학점');
        WHEN V_SCORE >= 60 THEN dbms_output.put_line('D학점');
        ELSE dbms_output.put_line('F학점');
    END CASE;
    
end;
/


SELECT * FROM TBLINSA;
SELECT * FROM TBLCOUNTRY;

CREATE TABLE TBLCOUNTRY_TEMP
    AS SELECT * FROM TBLCOUNTRY;
    
SELECT * FROM TBLCOUNTRY_TEMP;

INSERT INTO TBLCOUNTRY_TEMP (NAME, CAPITAL, POPULATION, CONTINENT, AREA)
    VALUES ('러시아', '모스크바', 8000, 'AS', 1000);

UPDATE TBLCOUNTRY_TEMP
    SET AREA = 1500
        WHERE NAME = '러시아';
    
DELETE FROM TBLCOUNTRY_TEMP WHERE NAME = '우루과이';

SELECT * FROM TBLCOUNTRY_TEMP;

ROLLBACK;

COMMIT;




set serveroutput on;

declare
    v_empno number(4) := 7788;
    v_ename varchar2(10);
begin
    v_ename := 'SCOTT';
    dbms_output.put_line('v_empno : ' || v_empno);
    dbms_output.put_line('v_ename : ' || v_ename);
end;
/


set serveroutput on;

declare
    v_tax constant number(1) := 3;
begin
    dbms_output.put_line('v_tex : ' || v_tax);
end;
/

declare
    v_depno number(2) default 10;
begin
    dbms_output.put_line('v_depno: ' || v_depno);
end;
/

declare
    V_DEPNO NUMBER(2) NOT NULL := 10;
begin
    dbms_output.put_line('V_DEPNO : ' || V_DEPNO);
end;
/

DECLARE
    V_DEPNO NUMBER(2) NOT NULL DEFAULT 10;
BEGIN
    dbms_output.put_line('V_DEPNO: ' || V_DEPNO);
END;
/

SELECT * FROM TBLINSA;

DECLARE
    VNUM TBLINSA.NUM%TYPE := 1001;
BEGIN
    dbms_output.put_line(VNUM);
END;
/
SELECT * FROM TBLINSA;
DECLARE
    V_TBLINSA_ROW TBLINSA%ROWTYPE;
BEGIN
    SELECT NUM, NAME, SSN, IBSADATE, CITY, TEL, BUSEO, JIKWI, BASICPAY, SUDANG INTO V_TBLINSA_ROW FROM TBLINSA WHERE NUM = 1001;
    
    dbms_output.put_line(V_TBLINSA_ROW.NUM);
    dbms_output.put_line(V_TBLINSA_ROW.NAME);
    dbms_output.put_line(V_TBLINSA_ROW.SSN);
    dbms_output.put_line(V_TBLINSA_ROW.IBSADATE);
    dbms_output.put_line(V_TBLINSA_ROW.CITY);
    dbms_output.put_line(V_TBLINSA_ROW.TEL);
    dbms_output.put_line(V_TBLINSA_ROW.BUSEO);
    dbms_output.put_line(V_TBLINSA_ROW.JIKWI);
    dbms_output.put_line(V_TBLINSA_ROW.BASICPAY);
    dbms_output.put_line(V_TBLINSA_ROW.SUDANG);
END;
/

DECLARE
    vnumber number := 14;
BEGIN
    
    if mod(vnumber, 2) = 1 then
        dbms_output.put_line('vnumber는 홀수입니다.');
    end if;
    
END;
/

declare
    vnumber number := 14;
begin

    if mod(vnumber, 2) = 1 then
        dbms_output.put_line('vnumber는 홀수입니다.');
    else
        dbms_output.put_line('vnumber는 짝수입니다.');
    end if;

end;
/

declare
    vscore number := 87;
begin
    
    if vscore >= 90 then
        dbms_output.put_line('A');
    elsif vscore >= 80 then
        dbms_output.put_line('B');
    elsif vscore >= 70 then
        dbms_output.put_line('C');
    elsif vscore >= 60 then
        dbms_output.put_line('D');
    else
        dbms_output.put_line('F');
    end if;
    
end;
/



declare
    vscore number := 43;
begin

    case trunc(vscore/10)
        when 10 then dbms_output.put_line('A');
        when 9 then dbms_output.put_line('B');
        when 8 then dbms_output.put_line('C');
        when 7 then dbms_output.put_line('D');
        when 6 then dbms_output.put_line('E');
        else dbms_output.put_line('F');
    end case;

end;
/



declare
    vscore number := 87;
begin
    
    case
        when vscore >= 90 then dbms_output.put_line('A');
        when vscore >= 80 then dbms_output.put_line('B');
        when vscore >= 70 then dbms_output.put_line('C');
        when vscore >= 60 then dbms_output.put_line('D');
        else dbms_output.put_line('F');
    end case;
    
end;
/



declare
    vnum number := 0;
begin

    loop
    
        dbms_output.put_line('현재 vnum : ' || vnum);
        vnum := vnum + 1;
        exit when vnum > 4;
    
    end loop;

end;
/

declare
    vnum number := 0;
begin

    loop
    
        dbms_output.put_line('현재 vnum: ' || vnum);
        vnum := vnum + 1;
        if vnum > 4 then
            exit;
        end if;
    
    end loop;

end;
/

declare
    vnum number := 0;
begin

    while vnum < 4 loop
    
        dbms_output.put_line('현재 vnum : ' || vnum);
        vnum := vnum + 1;
    
    end loop;

end;
/


begin
    
    for i in 0..4 loop
        dbms_output.put_line('현재 i의 값: ' || i);
    end loop;
    
end;
/



begin

    for i in 0..4 loop
    
        continue when mod(i, 2) = 1;
        dbms_output.put_line('현재 i의 값: ' || i);
    
    end loop;

end;
/


begin

    for i in 0..10 loop
    
        continue when mod(i, 2) = 0;
        dbms_output.put_line('현재 i의 값 : ' || i);
    
    end loop;

end;
/

select * from departments;

declare
    v_depno departments.department_id%type;
    v_name varchar2(20);
begin
    
    case
        when v_depno = 10 then select department_name into v_name from departments where department_id = 10;
        --else select department_name into v_name from departments where department_id = v_depno;
    end case;
    
    dbms_output.put_line('DNAME : ' || v_name);
    
end;
/
select * from departments;
declare
    type rec_dept is record (
        deptno number(2) not null := 99,
        dname departments.department_name%type,
        loc departments.location_id%type
    );
    dept_rec rec_dept;
begin
    dept_rec.deptno := 99;
    dept_rec.dname := 'DATABASE';
    dept_rec.loc := 3000;
    dbms_output.put_line('deptno : ' || dept_rec.deptno);
    dbms_output.put_line('dname : ' || dept_rec.dname);
    dbms_output.put_line('loc : ' || dept_rec.loc);
end;
/









create table tblLoop (
    seq number primary key,
    data varchar2(30) not null
);

create sequence seqLoop;
select * from tblInsa;
-- 더미 데이터 + 10000개 추가
-- data: '데이터1', '데이터2', '데이터3', .

select * from tblLoop;

delete from tblLoop;

declare
    vname tblInsa.name%type;
    vnum number;
begin
    
    vnum := 1010;
    
    loop
    
        select name into vname from tblInsa where num = vnum;
        
        insert into tblLoop (seq, data) values (seqLoop.nextVal, vname);
        
        vnum := vnum + 1;
        
        exit when
            vnum > 1045;
    
    end loop;

end;
/

select * from tblLoop;



create table tblGugudan (
    dan number not null,
    num number not null,
    result number not null
);

alter table tblGugudan
    add constraint tblGugudan_dan_num_pk primary key(dan, num);



begin
    
    for vdan in 2..9 loop
    
        for vnum in 1..9 loop
            insert into tblGugudan (dan, num, result)
                values (vdan, vnum, vdan * vnum);
        end loop;
        
    end loop;
    
end;
/

select * from tblGugudan;


declare
    cursor vcursor
        is select name, capital, population from tblCountry order by name;
    vname tblCountry.name%type;
    vcapital tblCountry.capital%type;
    vpopulation tblCountry.population%type;
begin

    open vcursor;
    
        loop
        
            fetch vcursor into vname, vcapital, vpopulation;
            exit when vcursor%notfound;
            dbms_output.put_line(vname || ' / ' || vcapital || ' / ' || vpopulation);
        
        end loop;
    
    close vcursor;

end;
/

drop table tblBonus;
drop sequence seqBonus;
select * from tblBonus;
select * from tblInsa;

create table tblBonus (
    seq number not null primary key,
    pnum number not null,
    bonus number not null,
    regdate varchar2(30)
);

create sequence seqBonus;

declare
    cursor vcursor is select num, name, basicpay from tblInsa where buseo = '개발부';
    vnum tblInsa.num%type;
    vname tblInsa.name%type;
    vbasicpay tblInsa.basicpay%type;
begin

    open vcursor;
    
        loop
        
            fetch vcursor into vnum, vname, vbasicpay;
            exit when vcursor%notfound;
            insert into tblBonus (seq, pnum, bonus, regdate)
                values (seqBonus.nextVal, vnum, round(vbasicpay * 0.7), sysdate);
        
        end loop;
    
    close vcursor;

end;
/


declare
    cursor vcursor is select * from tblInsa where buseo = '개발부';
    vrow tblInsa%rowtype;
begin

    open vcursor;
    
    loop
    
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        dbms_output.put_line(vrow.name);
        dbms_output.put_line(vrow.buseo);
        dbms_output.put_line('---');
    
    end loop;
    
    close vcursor;

end;
/

declare
    cursor vcursor is select * from tblInsa where buseo = '개발부';
begin

    for vrow in vcursor loop
    
    dbms_output.put_line(vrow.name);
    dbms_output.put_line(vrow.buseo);
    dbms_output.put_line('---');
    
    end loop;

end;
/

create or replace procedure procTest
is
    vnum number;
begin

    vnum := 100;
    dbms_output.put_line(vnum);

end procTest;
/

begin
    procTest;
end;
/



select name from tblInsa;

create or replace procedure procInsa
is
    cursor vcursor is select name from tblInsa;
    vname tblInsa.name%type;
begin

    open vcursor;
    
        loop
        
            fetch vcursor into vname;
            exit when vcursor%notfound;
            dbms_output.put_line(vname);
        
        end loop;
    
    close vcursor;

end;
/

begin
    procInsa;
end;
/

create or replace procedure procTest(pnum number)
is
    vsum number := 0;
begin
    
    vsum := pnum + 100;
    dbms_output.put_line(vsum);
    
end;
/

begin
procTest(100);
procTest(200);
procTest(300);
end;
/





create or replace procedure procLogin
(
    pid in number,    --아이디
    ppw in number     --비밀번호
    --presult out number  --성공(1), 실패(0)
)
is
    vid number;
    vpw number;
    vresult number;
begin

    select studentseq into vid from tblstudent where (studentseq = pid and ssn = ppw);
    select ssn into vpw from tblstudent where (studentseq = pid and ssn = ppw);
    
    if vid > 0 then 
        vresult := 1;
        dbms_output.put_line('로그인 성공');
        dbms_output.put_line(vresult);
        
    else
        vresult := 0;
        dbms_output.put_line('로그인 실패');
        dbms_output.put_line(vresult);
    end if;
    
    exception when others then dbms_output.put_line('예외');
end procLogin;
/


begin
    procLogin(1, 2716495);
end;
/













select
    case
        when to_char(sysdate, 'hh24:mi') > '15:10' then '지각'
    end
from dual;

select
    *
from dual;

-----------------------------------------------------------------------------------------------------------------------




/*
교육생 로그인하기
*/

create or replace procedure procLoginStudent
(
    pid in number,    --아이디
    ppw in number,     --비밀번호
    presult out number  --성공(1), 실패(0)
)
is
    vid number;
    vpw number;
    
begin

    select studentseq into vid from tblstudent where (studentseq = pid and ssn = ppw);
    select ssn into vpw from tblstudent where (studentseq = pid and ssn = ppw);
    
    if vid > 0 then 
        presult := 1;
        dbms_output.put_line('로그인 성공');
        
--    elsif  then
--        presult := 0;
--        dbms_output.put_line('로그인 실패');
    end if;
    
    exception when others then dbms_output.put_line('로그인 실패');
end procLoginStudent;
/

declare
    presult number;
begin
    procLogin(관리자id, 관리자pw, presult);
end;
/
--id : studentseq 1, pw : ssn 2716495



/*
교육생 로그인하기
*/

create or replace procedure procLoginManager
(
    pid in number,    --아이디
    ppw in number,     --비밀번호
    presult out number  --성공(1), 실패(0)
)
is
    vid number;
    vpw number;
    
begin

    select managerseq into vid from tblmanager where (managerseq = pid and managerpw = ppw);
    select managerpw into vpw from tblmanager where (managerseq = pid and managerpw = ppw);
    
    if vid > 0 then 
        presult := 1;
        dbms_output.put_line('로그인 성공');
      
    end if;
    
    exception when others then dbms_output.put_line('로그인 실패');
end procLoginManager;
/

declare
    presult number;
begin
    procLogin(교육생번호, 교육생ssn, presult);
end;
/



/*
교사 로그인하기
*/

create or replace procedure procLoginManager
(
    pid in number,    --아이디
    ppw in number,     --비밀번호
    presult out number  --성공(1), 실패(0)
)
is
    vid number;
    vpw number;
    
begin

    select teacherseq into vid from tblteacher where (teacherseq = pid and ssn = ppw);
    select ssn into vpw from tblteacher where (teacherseq = pid and ssn = ppw);
    
    if vid > 0 then 
        presult := 1;
        dbms_output.put_line('로그인 성공');
      
    end if;
    
    exception when others then dbms_output.put_line('로그인 실패');
end procLoginManager;
/

declare
    presult number;
begin
    procLogin(교사번호, 교사ssn, presult);
end;
/




INSERT INTO tblAttendance (attendanceSeq, AttendanceDate, inTime, outTime, condition, studentSeq)
values (attendanceSeq.nextVal, '2021-03-02', '09:15', '17:51', '지각', 61);

/*교육생 입실찍기*/
create or replace procedure procAttendin(
    pid in varchar2
)
is
begin
    if to_char(sysdate, 'hh24:mi') > '09:10' then
        insert into tblAttendance(attendanceSeq, AttendanceDate, inTime, outTime, condition, studentSeq)
        values (attendanceSeq.nextVal, to_char(sysdate, 'yy-mm-dd'), to_char(sysdate, 'hh24:mi') , null, '지각', pid);
    else
        insert into tblAttendance(attendanceSeq, AttendanceDate, inTime, outTime, condition, studentSeq)
        values (attendanceSeq.nextVal, to_char(sysdate, 'yy-mm-dd'), to_char(sysdate, 'hh24:mi') , null, '정상', pid);
    end if;
end procAttendin;
/
--begin
--    procAttendin(1);
--end;
--/
--SELECT * FROM TBLATTENDANCE WHERE STUDENTSEQ = 1 AND ATTENDANCEDATE = TO_CHAR(SYSDATE, 'YY-mm-dd');

/*교육생 퇴실찍기*/
create or replace procedure procAttendout(
    pid in varchar2
)
is
begin
    if to_char(sysdate, 'hh24:mi') > '17:50'  then -- 정상퇴실

        update tblAttendance set
            outTime = to_char(sysdate, 'hh24:mi')
                where studentseq = pid and attendancedate = to_char(sysdate, 'yy-mm-dd');
        
    elsif to_char(sysdate, 'hh24:mi') < '17:50' then -- 조퇴
    
        update tblAttendance set
            outTime = to_char(sysdate, 'hh24:mi'),
            condition = '조퇴'
                where studentseq = pid and attendancedate = to_char(sysdate, 'yy-mm-dd');
            
    end if;
end procAttendout;
/
commit;
--begin
--procAttendout(1);
--end;

rollback;

--end;
--/
--SELECT * FROM TBLATTENDANCE WHERE STUDENTSEQ = 1 AND ATTENDANCEDATE = TO_CHAR(SYSDATE, 'YY-mm-dd');

/*교육생 결석찍기*/
create or replace procedure procAttendout(
    pid in varchar2
)
is
begin
    if to_char(sysdate, 'hh24:mi') > '17:50'  then -- 정상퇴실

        update tblAttendance set
            outTime = to_char(sysdate, 'hh24:mi')
                where studentseq = pid and attendancedate = to_char(sysdate, 'yy-mm-dd');
        
    elsif to_char(sysdate, 'hh24:mi') < '17:50' then -- 조퇴
    
        update tblAttendance set
            outTime = to_char(sysdate, 'hh24:mi'),
            condition = '조퇴'
                where studentseq = pid and attendancedate = to_char(sysdate, 'yy-mm-dd');
            
    end if;
end procAttendout;
/
commit;
--begin
--procAttendout(1);
--end;






create or replace function fnAge(
    pbirth varchar2 
) return varchar2 
is
    cursor vcursor is select (to_char(sysdate,'yyyy') - substr(pbirth,1,4)) from tblStudent;
    vrow tblStudent%rowtype;
begin

        for vrow in vcursor loop
    
        case
            when substr(vrow, 1, 1) = '1' then '10대' 
            when substr(vrow, 1, 1) = '2' then '20대'
            when substr(vrow, 1, 1) = '3' then '30대'
            when substr(vrow, 1, 1) = '4' then '40대'
            when substr(vrow, 1, 1) = '5' then '50대'
        end case;
    
    end loop;
end fnAge;
/


select name, fnAge(birth) from tblStudent where studentSeq = 1;
select * from tblStudent;

select fnAge(birth) from tblStudent;


select

    case
        when to_char(sysdate,'yyyy') - substr(pbirth,1,4) = '1' then '10대'
    end;
    
from tblStudent



case  
    when substr(vage,1,1) = '1' then '10대' 
    when substr(vage,1,1) = '2' then '20대' 
    when substr(vage,1,1) = '3' then '30대' 
    when substr(vage,1,1) = '4' then '40대' 
    when substr(vage,1,1) = '5' then '50대' 
    end;






