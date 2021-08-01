
-- db.sql

-- 회원 테이블
select * from tblUsers;

-- 게시판 테이블 > 단계 + 확장
-- 기본 게시판
drop table tblBoards;
drop sequence seqBoards;

create table tblBoards(
    seq number primary key,                                     -- 글번호(PK)
    id varchar2(30) not null references tblUsers(id),           -- 아이디(FK)
    subject varchar2(500) not null,                             -- 제목
    content varchar2(4000) not null,                            -- 내용
    regdate date default sysdate not null,                      -- 작성시간
    readcount number default 0 not null,                        -- 조회수
    tag varchar2(1) not null check(tag in ('y', 'n'))           -- 글내용에 HTML 태그 허용 유무
);

create sequence seqBoards;

select * from tblBoards order by seq desc;

select seq, (select name from tblUsers where id = tblBoards.id) as name, subject, readcount, regdate from tblBoards order by seq desc;

create or replace view vwBoards
as
    select 
    seq, 
    id, 
    (select name from tblUsers where id = tblBoards.id) as name, 
    subject,
    content,
    readcount, 
    regdate, 
    (sysdate - regdate) as isnew,
    (select count(*) from tblComments where pseq = tblBoards.seq) as ccnt
    from tblBoards;
    
select * from vwBoards;


drop table tblComments;
drop sequence seqComments;

create table tblComments (
    seq number primary key,                                 -- 댓글번호(PK)
    id varchar2(30) not null references tblUsers(id),        -- 아이디(FK)
    content varchar2(2000) not null,                        -- 댓글내용
    regdate date default sysdate not null,                  -- 작성날짜
    pseq number not null references tblBoards(seq)          -- 부모글번호(FK)
);

create sequence seqComments;

select * from tblComments order by seq desc;

delete from tblComments;




-- 페이징
-- 게시물을 일정 단위로 끊어서 가져오는 기법
select * from vwBoards;
select * from tblUsers;
select * from tblBoards;

select subject , rownum from vwBoards v where rownum > 11 and rownum < 20;



drop view vwBoards;

create or replace view vwBoards
as
    select a.*, rownum as rnum from 
                    (select 
                    seq, 
                    id, 
                    (select name from tblUsers where id = tblBoards.id) as name, 
                    subject,
                    content,
                    readcount, 
                    regdate, 
                    (sysdate - regdate) as isnew,
                    (select count(*) from tblComments where pseq = tblBoards.seq) as ccnt,
                    thread,
                    depth
                from tblBoards order by thread desc) a;

select * from vwBoards where rnum = 5;
select * from vwBoards order by seq desc;
select count(*) from vwBoards;

delete from tblBoards where seq between 21 and 74;

commit;





drop table tblComments;
drop sequence seqComments;

drop table tblBoards;
drop sequence seqBoards;

create table tblBoards(
    seq number primary key,                                     -- 글번호(PK)
    id varchar2(30) not null references tblUsers(id),           -- 아이디(FK)
    subject varchar2(500) not null,                             -- 제목
    content varchar2(4000) not null,                            -- 내용
    regdate date default sysdate not null,                      -- 작성시간
    readcount number default 0 not null,                        -- 조회수
    tag varchar2(1) not null check(tag in ('y', 'n')),           -- 글내용에 HTML 태그 허용 유무
    thread number not null,                                     -- 정렬 기준
    depth number not null                                       -- 출력
);

create sequence seqBoards;

select nvl(max(thread), 0) + 1000 as thread from tblBoards;

select * from tblBoards;


create table tblComments (
    seq number primary key,                                 -- 댓글번호(PK)
    id varchar2(30) not null references tblUsers(id),        -- 아이디(FK)
    content varchar2(2000) not null,                        -- 댓글내용
    regdate date default sysdate not null,                  -- 작성날짜
    pseq number not null references tblBoards(seq)          -- 부모글번호(FK)
);

create sequence seqComments;

select * from tblBoards order by seq desc;
select max(thread) from tblBoards;
select * from tblComments;


-- 유저당 게시물 개수?
-- 유저당 댓글 개수?

--{
--    name: '홍길동',
--    y: 10
--},
--{
--    name: '테스트',
--    y: 3
--},
--{
--    name: '관리자',
--    y: 6
--}

-- group by

select name, (select * from tblBoards where id = tblUsers.name) from tblUsers group by name;

select name, (select count(*) from tblBoards where id = tblUsers.id) as cnt from tblUsers;

select name, (select count(*) from tblComments where id = tblUsers.id) as cnt from tblUsers;




-- 지도
create table tblPlace (
    seq number primary key,             -- PK
    name varchar2(100) not null,        -- 장소명
    lat number not null,                -- 위도(Latitude)
    lng number not null                 -- 경도(Longitude)
);

create sequence seqPlace;

select * from tblPlace order by seq;


select name, (select count(*) from tblBoards where id = tblUsers.id) as cnt from tblUsers;




show user;
create user web identified by java1234;

show user;

grant connect, resource to web;






























