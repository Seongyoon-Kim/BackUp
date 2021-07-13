drop table tblAddress;
drop sequence seqAddress;

create table tblAddress (
    seq number primary key,
    name varchar2(30) not null,
    age number(2) not null,
    gender char(1) not null check (gender in ('m', 'f')),
    address varchar2(500) not null
);

create sequence seqAddress;

insert into tblAddress (seq, name, age, gender, address) values (seqAddress.nextval, '홍길동', '20', 'm', '서울시 강남구 역삼동');

select * from tblAddress;

commit;

delete from tblAddress;