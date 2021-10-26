create table tblAjaxUser (
    seq number primary key,
    name varchar2(30) not null,
    age number not null,
    address varchar2(300) not null,
    birthday varchar2(10) not null
);

create sequence seqAjaxUser;

insert into tblAjaxUser (seq, name, age, address, birthday) values (seqAjaxUser.nextVal, '홍길동', 20, '서울시 강남구', '2001-01-01');
insert into tblAjaxUser (seq, name, age, address, birthday) values (seqAjaxUser.nextVal, '아무개', 25, '서울시 강북구', '1996-05-07');
insert into tblAjaxUser (seq, name, age, address, birthday) values (seqAjaxUser.nextVal, '테스트', 23, '서울시 강동구', '1998-09-12');
insert into tblAjaxUser (seq, name, age, address, birthday) values (seqAjaxUser.nextVal, '하하하', 22, '서울시 동작구', '1999-12-06');
insert into tblAjaxUser (seq, name, age, address, birthday) values (seqAjaxUser.nextVal, '호호호', 21, '서울시 은평구', '2000-03-26');

commit;

select * from tblAjaxUser;

select count(*) from tblAjaxUser;










