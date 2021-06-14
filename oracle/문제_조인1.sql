-- 5. tblMen. tblWomen. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
--    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
--    홍길동         180       70            장도연     177        65
--    아무개         175       null          이세영     163        null
--    ..
select
    m.name,
    m.height,
    m.weight,
    w.name,
    w.height,
    w.weight
from tblmen m
    inner join tblWomen w
        on m.couple = w.name;

-- 23. tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당프로젝트명을 가져오시오.
select * from tblStaff;
select * from tblProject;

select
    s.name,
    s.address,
    s.salary,
    p.project
from tblStaff s
    inner join tblProject p
        on s.seq = p.staff_seq;

-- 24. tblVideo, tblRent, tblMember. '뽀뽀할까요' 라는 비디오를 빌려간 회원의 이름은?
select * from tblvideo;
select * from tblRent;
select * from tblMember;

select
    m.name,
    v.name,
    r.rentdate,
    r.retdate
from tblVideo v
    inner join tblRent r
        on v.seq = r.video
            inner join tblMember m
                on r.member = m.seq
                    where v.name = '뽀뽀할까요';

-- 25. tblStaff, tblProejct. '노조협상'을 담당한 직원의 월급은 얼마인가?
select * from tblStaff;
select * from tblProject;

select
    s.name,
    s.salary,
    p.project
from tblStaff s
    inner join tblProject p
        on s.seq = p.staff_seq
            where p.seq = 4;

-- 26. tblVideo, tblRent, tblMember. '털미네이터' 비디오를 한번이라도 빌려갔던 회원들의 이름은?
select * from tblvideo;
select * from tblRent;
select * from tblMember;

select
    m.name,
    v.name,
    r.rentdate,
    r.retdate
from tblVideo v
    inner join tblRent r
        on v.seq = r.video
            inner join tblMember m
                on r.member = m.seq
                    where r.video = 3;

-- 27. tblStaff, tblProject. 서울시에 사는 직원을 제외한 나머지 직원들의 이름, 월급, 담당프로젝트명을 가져오시오.
select * from tblStaff;
select * from tblProject;

select
    s.name,
    s.salary,
    p.project
from tblStaff s
    inner join tblProject p
        on s.seq = p.staff_seq
            where s.address <> '서울시';

-- 28. tblCustomer, tblSales. 상품을 2개(단일상품) 이상 구매한 회원의 연락처, 이름, 구매상품명, 수량을 가져오시오.
select * from tblCustomer;
select * from tblSales;

select
    c.name,
    c.tel,
    s.item,
    s.qty
from tblCustomer c
    inner join tblSales s
        on c.seq = s.cseq
            where s.qty >= 2;

-- 29. tblVideo, tblRent, tblGenre. 모든 비디오 제목, 보유수량, 대여가격을 가져오시오.
select * from tblVideo;
select * from tblRent;
select * from tblGenre;

select
    v.name,
    v.qty,
    g.price
from tblVideo v
    inner join tblRent r
        on v.seq = r.video
            inner join tblGenre g
                on v.genre = g.seq;

-- 30. tblVideo, tblRent, tblMember, tblGenre. 2007년 2월에 대여된 구매내역을 가져오시오. 회원명, 비디오명, 언제, 대여가격
select * from tblVideo;
select * from tblRent;
select * from tblGenre;
select * from tblMember;

select
    m.name,
    v.name,
    r.rentdate,
    g.price
from tblVideo v
    inner join tblRent r
        on v.seq = r.video
            inner join tblMember m
                on r.member = m.seq
                    inner join tblGenre g
                        on v.genre = g.seq
                            where rentdate like '__/02/__';
                    

-- 31. tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.
select * from tblVideo;
select * from tblRent;
select * from tblMember;

select
    m.name,
    v.name,
    r.rentdate,
    r.retdate
from tblVideo v
    inner join tblRent r
        on v.seq = r.video
            inner join tblMember m
                on r.member = m.seq
                    where r.retdate is null;
