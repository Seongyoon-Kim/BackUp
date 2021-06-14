--[교사]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblTeacher;
DROP SEQUENCE teacherSeq;

CREATE TABLE tblTeacher (
    teacherSeq number NOT NULL,             -- 교사고유번호(PK)
    name varchar2(15) NOT NULL,             -- 교사명
    ssn varchar2(15) NOT NULL,              -- 주민번호(뒷자리)
    phoneNumber varchar2(15) NOT NULL,      -- 전화번호
    condition varchar2(15) NOT NULL         -- 현직/대기여부
);

CREATE SEQUENCE teacherSeq;

ALTER TABLE tblTeacher
    ADD CONSTRAINT PK_TBLTEACHER PRIMARY KEY (teacherSeq);

ALTER TABLE tblTeacher 
    ADD CONSTRAINT CK_TBLTEACHER_SSN CHECK(length(ssn) = 7);

ALTER TABLE tblTeacher 
    ADD CONSTRAINT CK_TBLTEACHER_CONDITION CHECK(condition in ('현직', '대기'));





--[강의가능과목]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblPossibleSubject;
DROP SEQUENCE possibleSubjectseq;

CREATE TABLE tblPossibleSubject (
    possibleSubjectSeq number NOT NULL,     -- 강의가능과목 고유번호(PK)
    totalSubjectSeq number NOT NULL,        -- 전체과목번호(FK)
    teacherSeq number NOT NULL              -- 교사고유번호(FK)
);

CREATE SEQUENCE possibleSubjectseq;

ALTER TABLE tblPossibleSubject
    ADD CONSTRAINT PK_TBLPOSSIBLESUBJECT PRIMARY KEY (possibleSubjectseq);

ALTER TABLE tblPossibleSubject
    ADD CONSTRAINT FK_tblTotalSubject_TO_tblPossibleSubject FOREIGN KEY (totalSubjectSeq)
        REFERENCES tblTotalSubject (totalSubjectSeq);
        
ALTER TABLE tblPossibleSubject
    ADD CONSTRAINT FK_tblTeacher_TO_tblPossibleSubject FOREIGN KEY (teacherSeq)
        REFERENCES tblTeacher (teacherSeq);





--[전체과목]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblTotalSubject;
DROP SEQUENCE totalSubjectSeq;

CREATE TABLE tblTotalSubject (
    totalSubjectSeq number NOT NULL,    -- 전체과목번호(PK)
    name varchar2(15) NOT NULL          -- 과목명
);

CREATE SEQUENCE totalSubjectSeq;

ALTER TABLE tblTotalSubject
    ADD CONSTRAINT PK_TBLTOTALSUBJECT PRIMARY KEY (totalSubjectSeq);    





--[개설과목]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblOpenSubject;
DROP SEQUENCE openSubjectSeq;

CREATE TABLE tblOpenSubject (
    openSubjectSeq number NOT NULL,         -- 개설과목 고유번호(PK)
    beginDate date NOT NULL,                -- 과목시작날짜
    endDate date NOT NULL,                  -- 과목종료날짜
    openCourseSeq number NOT NULL,          -- 개설과정 고유번호(FK)
    totalSubjectSeq number NOT NULL,        -- 전체과목번호(FK)
    period varchar2(20) NOT NULL            -- 과목기간
);  

CREATE SEQUENCE openSubjectSeq;

ALTER TABLE tblOpenSubject
    ADD CONSTRAINT PK_TBLOPENSUBJECT PRIMARY KEY (openSubjectSeq);

ALTER TABLE tblOpenSubject
    ADD CONSTRAINT FK_tblOpenCourse_TO_tblOpenSubject FOREIGN KEY (openCourseSeq)
        REFERENCES tblOpenCourse (openCourseSeq);

ALTER TABLE tblOpenSubject
    ADD CONSTRAINT FK_tblTotalSubject_TO_tblOpenSubject FOREIGN KEY (totalSubjectSeq)
        REFERENCES tblTotalSubject (totalSubjectSeq);    





--[시험지등록여부]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblRegistrationStatus;
DROP TABLE registrationStatusSeq;

CREATE TABLE tblRegistrationStatus (
    registrationStatusSeq number NOT NULL,      -- 시험지등록번호(PK)
    registrationDate date NULL,                 -- 시험지등록날짜
    condition varchar2(15) NOT NULL,            -- 시험지등록여부
    openSubjectSeq number NOT NULL              -- 개설과목 고유번호(FK)
);

CREATE SEQUENCE registrationStatusSeq;   

ALTER TABLE tblRegistrationStatus
    ADD CONSTRAINT PK_TBLREGISTRATIONSTATUS PRIMARY KEY (registrationStatusSeq);

ALTER TABLE tblRegistrationStatus 
    ADD CONSTRAINT CK_TBLREGISTRATIONSTATUS_CONDITION CHECK(condition in ('등록','미등록'));   

ALTER TABLE tblRegistrationStatus
    ADD CONSTRAINT FK_tblOpenSubject_TO_tblRegistrationStatus FOREIGN KEY (openSubjectSeq)
        REFERENCES tblOpenSubject (openSubjectSeq);





--[시험문제]--------------------------------------------------------------------------------------------------------------
DROP TABLE tblTestQuestion;
DROP SEQUENCE testQuestionSeq;

CREATE TABLE tblTestQuestion (
    testQuestionSeq number NOT NULL,           -- 시험문제 고유번호(PK)
    testQusetion varchar2(100) NULL,           -- 시험문제
    answer varchar2(100) NULL,                 -- 답
    registrationStatusSeq number NOT NULL      -- 시험지등록번호(FK)
);

CREATE SEQUENCE testQuestionSeq;
    
ALTER TABLE tblTestQuestion
    ADD CONSTRAINT PK_TBLTESTQUESTION PRIMARY KEY (testQuestionSeq);


ALTER TABLE tblTestQuestion
    ADD CONSTRAINT FK_tblRegistrationStatus_TO_tblTestQuestion FOREIGN KEY (registrationStatusSeq)
        REFERENCES tblRegistrationStatus (registrationStatusSeq);    
