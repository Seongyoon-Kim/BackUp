drop table tblTodo;
drop sequence seqTodo;

create table tblTodo (
	seq number primary key,					--번호(PK)
	todo varchar2(300) not null, 			--할일
	complete char(1) not null,				--완료유무. 완료(1), 미완료(0)
	regdate date default sysdate not null	--등록시각
);

create sequence seqTodo;

insert into tblTodo (seq, todo, complete, regdate) values (seqTodo.nextval, '노트북 수리', '0', sysdate);

select * from tblTodo order by seq asc;

commit;