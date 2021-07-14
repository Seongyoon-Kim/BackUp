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












-- m1()
create or replace procedure proc_m1
is
begin
    delete from tblAddress;
end;
/

select * from tblAddress;


-- m2()
create or replace procedure proc_m2(
    pname in varchar2,
    page in number,
    pgender in varchar2,
    paddress in varchar2
)
is
begin
    insert into tblAddress (seq, name, age, gender, address) values (seqAddress.nextval, pname, page, pgender, paddress);
end proc_m2;
/

-- m3()
create or replace procedure proc_m3(
    pname in varchar2,
    page in number,
    pgender in varchar2,
    paddress in varchar2,
    presult out number
)
is
begin
    insert into tblAddress (seq, name, age, gender, address) values (seqAddress.nextval, pname, page, pgender, paddress);
    
    presult := 1;
    
exception
    when others then
        presult := 0;

end proc_m3;
/

select * from tblAddress;




-- m4()
create or replace procedure proc_m4(
    pseq in number,
    pname out varchar2,
    page out number,
    pgender out varchar2,
    paddress out varchar2
)
is
begin
    select name, age, gender, address into pname, page, pgender, paddress from tblAddress where seq = pseq;
end proc_m4;
/




-- m5()
create or replace procedure proc_m5(
    pgender in varchar2,
    pcursor out sys_refcursor
)
is
begin

    open pcursor for
        select * from tblAddress where gender = pgender;

end proc_m5;
/

select * from tblAddress;













