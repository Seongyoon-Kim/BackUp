-- ex13_DDL.sql

/*

DDL
- 데이터 정의의
- 데이터베이스 객체를 생성, 수정, 삭제한다.
- 데이터베이스 객체: 테이블, 뷰, 인덱스, 트리거, 프로시저, 제약 사항, 계정 등..
- create, alter, drop

DDL + 테이블(제약사항)

테이블 생성하기 -> 테이블을 구성하는 컬럼을 생성하기(컬럼 정의)

create table 테이블명
(
    컬럼 정의,
    컬럼 정의,
    컬럼 자료형(길이) null표기 제약사항
);


제약 사항, Constraint
- **************************************************************************************************
- 해당 컬럼에 들어갈 데이터(값)에 대한 조건(규제 사항)
    -> 조건을 만족하면 데이터 통과, 조건을 만족하지 못하면 데이터 거부 -> 에러 발생 -> 유효성 검사 도구
- 6가지

1. not null
    - 해당 컬럼이 반드시 값이 가져야 한다.
    - 해당 컬럼에 값이 없으면 에러
    - 필수값(***)
    - null을 가지지 못한다.
    
2. primary key, PK
    - 해당 컬럼이 모든 레코드 중에서 유일한 값을 가져야 한다.
    - 다른 레코드와 같은 값을 가질 수 없다.
    - 유일하다. + 필수값 **********
    - 주로 식별자로 사용합니다. **********
    - 테이블의 모든 행들을 유일하게 구분하는 역할의 키(컬럼)
    - 반드시 테이블엔 PK가 존재해야 한다.(PK가 없는 테이블을 만들 수 있다. -> 비권장)
    - 기본키의 형태
        a. 단일 기본키 > 기본키 : 1개의 컬럼이 PK 역할
        b. 복합 기본키 > 복합키 : 2개 이상의 컬럼이 모여 PK 역할, Composite Key
        
        
3. foreign key
    - 참조키, 외래키
    - 나중에 수업
    
4. unique
    - primary key - not null
    - 중복값을 가질 수 없는데 null은 가질 수 있는
    
    
5. check
    - 사용자 정의 제약 조건
    - where절에서 조건을 거는 것과 동일
    
6. DEFAULT
    - 기본값 설정
    - 해당 컬럼값이 NULL이면 대신 준비한 기본값을 대입한다.

*/

-- 메모 테이블
CREATE TABLE TBLMEMO(

    seq number(3),              -- 메모 번호
    name varchar2(30),          -- 작성자
    memo varchar2(1000) NULL,        -- 메모 내용
    regdate date NULL           -- 작성 날짜

);

SELECT * FROM TBLMEMO;

-- 데이터 추가하기
INSERT INTO TBLMEMO (컬럼리스트) VALUES (값리스트);

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO) VALUES (1, '홍길동', '메모입니다.'); -- 날짜 생략
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, NULL, '메모입니다.', SYSDATE);


DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) NOT NULL,              -- 메모 번호
    name varchar2(30) NOT NULL,          -- 작성자
    memo varchar2(1000) NULL,        -- 메모 내용
    regdate date NULL           -- 작성 날짜

);

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', NULL, SYSDATE);

-- ORA-01400: cannot insert NULL into ("HR"."TBLMEMO"."NAME")
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, NULL, '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '메모입니다.', SYSDATE);


SELECT * FROM TBLMEMO;



DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) NOT NULL,
    name varchar2(30) NOT NULL,
    memo varchar2(1000) NULL,
    regdate date NULL

);

DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    -- 모든 테이블에는 PK가 반드시 있어야 한다. -> 의미하는것?
    seq number(3) PRIMARY KEY, -- 기본키(PK) -> 중복값을 가질 수 없다.(Unique) + Not Null -> 완벽한 식별자
    name varchar2(30),
    memo varchar2(1000),
    regdate date

);

-- 현재 상태는 레코드를 구분 할 방법이 없다. ****
-- ORA-00001: unique constraint (HR.SYS_C007084) violated
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (2, '아무개', '메모입니다.', SYSDATE);

-- ORA-01400: cannot insert NULL into ("HR"."TBLMEMO"."SEQ")
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (NULL, '아무개', '메모입니다.', SYSDATE);

SELECT SEQ, NAME, MEMO, TO_CHAR(REGDATE, 'YYYY-MM-DD HH24:MI:SS') FROM TBLMEMO WHERE SEQ = 2;


DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) primary key,
    name varchar2(30) unique, -- 중복값 금지, 식별자로는 사용할 수 없다.(null을 허용하기 때문에)
    memo varchar2(1000),
    regdate date

);

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (2, '아무개', '메모입니다.', SYSDATE);

-- ORA-00001: unique constraint (HR.SYS_C007086) violated
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (3, '홍길동', '또 다른 메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (3, '하하하', '또 다른 메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (4, null, '또 다른 메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (5, null, '또 다른 메모입니다.', SYSDATE);

SELECT * FROM TBLMEMO;


DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) primary key,
    name varchar2(30), -- 중복값 금지, 식별자로는 사용할 수 없다.(null을 허용하기 때문에)
    memo varchar2(1000),
    regdate date,
    --LV NUMBER NOT NULL CHECK(LV >= 1 AND LV <= 5),
    --COLOR VARCHAR2(30) NOT NULL CHECK(COLOR = 'RED' OR COLOR = 'BLUE' OR COLOR = 'YELLOW')
    LV NUMBER NOT NULL CHECK(LV BETWEEN 1 AND 5),
    COLOR VARCHAR2(30) NOT NULL CHECK(COLOR IN ('RED', 'BLUE', 'YELLOW'),
    UPDATEDATE DATE CHECK(TO_CHAR(UPDATEDATE, 'D') = 1)

);

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE, LV) VALUES (1, '홍길동', '메모입니다.', SYSDATE, 1);

-- ORA-02290: check constraint (HR.SYS_C007091) violated
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE, LV) VALUES (2, '홍길동', '메모입니다.', SYSDATE, 10);

SELECT * FROM TBLMEMO;



DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) primary key,
    name varchar2(30) DEFAULT '익명',
    memo varchar2(1000) DEFAULT '메모없음',
    regdate date

);

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길동', '메모입니다.', SYSDATE);
INSERT INTO TBLMEMO (SEQ, REGDATE) VALUES (2, SYSDATE);

SELECT * FROM TBLMEMO;

INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (seqNum.nextVal, '홍길동', '메모입니다.', SYSDATE);


/*

제약 사항을 만드는 방법

1. 컬럼 수준에서 만드는 방법
    - 현재 방법
    - 컬럼 1개를 정의할 때 제약 사항도 같이 정의하는 방법
    - 컬럼명 자료형(길이) [constraint 제약명] 제약조건

2. 테이블 수준에서 만드는 방법

*/

DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) constraint tblmemo_seq_pk primary key,
    name varchar2(30) CONSTRAINT tblmemo_name_ck CHECK(LENGTH(NAME) BETWEEN 9 AND 30),
    memo varchar2(1000) constraint tblmemo_memo_ck CHECK(LENGTH(MEMO) > 30),
    regdate date

);

-- ORA-02290: check constraint (HR.SYS_C007095) violated
-- ORA-02290: check constraint (HR.TBLMEMO_MEMO_CK) violated
-- ORA-02290: check constraint (HR.TBLMEMO_NAME_CK) violated
-- ORA-00001: unique constraint (HR.TBLMEMO_SEQ_PK) violated
INSERT INTO TBLMEMO (SEQ, NAME, MEMO, REGDATE) VALUES (1, '홍길홍길홍길홍길홍길', '메모입니다.메모입니다.메모입니다.메모입니다.메모입니다.메모입니다.', SYSDATE);

SELECT * FROM TBLMEMO;




DROP TABLE TBLMEMO;

CREATE TABLE TBLMEMO(

    seq number(3) -- seq number(3) constraint tblmemo_seq_pk primary key,
    name varchar2(30),
    memo varchar2(1000),
    regdate date,
    
    -- 제약 사항 추가 -> 가독성 차이
    constraint tblmemo_seq_pk primary key(seq),
    constraint tblmemo_name_ck check(length(name) between 9 and 30),
    constraint tblmemo_memo_ck check(length(memo) > 30)

);







