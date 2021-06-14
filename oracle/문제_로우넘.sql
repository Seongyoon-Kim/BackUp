
--1. tblInsa. 남자 급여(기본급+수당)을 (내림차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
select a.*, rownum as 순위 from (select
                    name as 이름,
                    buseo as 부서,
                    jikwi as 직위,
                    basicpay + sudang as 급여
                from tblInsa
                    where substr(ssn, 8, 1) = 1
                        order by basicpay + sudang desc) a;


--2. tblInsa. 여자 급여(기본급+수당)을 (오름차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
select a.*, rownum as 순위 from (select
    name as 이름,
    buseo as 부서,
    jikwi as 직위,
    basicpay + sudang as 급여
from tblInsa
    where substr(ssn, 8, 1) = 2
        order by basicpay + sudang) a;

--3. tblInsa. 여자 인원수가 가장 많은 부서 및 인원수 가져오시오.
select * from (select a.*, rownum as rnum from (select
                                                    buseo,
                                                    count(*) as cnt
                                                from tblInsa
                                                    where substr(ssn, 8, 1) = 2
                                                        group by buseo
                                                            order by count(*) desc) a)
                                                                where rnum = 1;

--4. tblInsa. 지역별 인원수 (내림차순)순위를 가져오시오.(city, 인원수)
select a.*, rownum as 순위 from (select
                    city as 지역,
                    count(*) as 인원수
                from tblInsa
                    group by city
                        order by count(*) desc) a;

--5. tblInsa. 부서별 인원수가 가장 많은 부서 및 인원수 출력.
select a.*, rownum as 순위 from (select
                                    buseo as 부서,
                                    count(*) as 인원수
                                from tblInsa
                                    group by buseo
                                        order by count(*) desc) a
                                            where rownum = 1;

--6. tblInsa. 남자 급여(기본급+수당)을 (내림차순) 3~5등까지 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
select * from (select a.*, rownum as rnum from (select
                                                    name as 이름,
                                                    buseo as 부서,
                                                    jikwi as 직위,
                                                    basicpay + sudang as 급여
                                                from tblInsa
                                                    order by basicpay + sudang desc) a)
                                                        where rnum between 3 and 5;

--7. tblInsa. 입사일이 빠른 순서로 5순위까지만 가져오시오.
select a.*, rownum as 입사순서 from (select
                                        *
                                    from tblInsa
                                        order by ibsadate) a
                                            where rownum <= 5;
    

--8. tblhousekeeping. 지출 내역(가격 * 수량) 중 가장 많은 금액을 지출한 내역 3가지를 가져오시오.
select a.*, rownum as 지출순위 from (select
                                        *
                                    from tblhousekeeping
                                        order by price * qty desc) a
                                            where rownum <= 3;

--9. tblinsa. 평균 급여 2위인 부서에 속한 직원들을 가져오시오.
select
    *
from tblInsa;

--10. tbltodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 5개 가져오시오.
select a.*, rownum as 완료순서 from (select
                                        *
                                    from tbltodo
                                        where completedate is not null
                                            order by completedate - adddate asc) a
                                                where rownum <= 5;

--32. tblInsa. 남자 직원 중에서 급여를 3번째로 많이 받는 직원과 9번째로 많이 받는 직원의 급여 차액은 얼마?
select basicpay - (select basicpay from (select a.*, rownum as rnum from (select
                                                                                *
                                                                            from tblInsa
                                                                                where substr(ssn, 8, 1) = 1
                                                                                    order by basicpay desc) a)
                                                                                        where rnum = 9) from (select a.*, rownum as rnum from (select
                                                                                                                                                    *
                                                                                                                                                from tblInsa
                                                                                                                                                    where substr(ssn, 8, 1) = 1
                                                                                                                                                        order by basicpay desc) a)
                                                                                                                                                            where rnum = 3;

--70. employees, departments. 커미션(commission_pct)을 가장 많이 받은 상위 4명의 부서명(department_name),
--사원명 (first_name), 급여(salary), 커미션(commission_pct) 정보를 가져오시오. 결과는 커미션 을 많이 받는 순서로 가져오되 
--동일한 커미션에 대해서는 급여가 높은 사원을 먼저 정렬하시오.
select * from employees;
select * from departments;

select * from (select a.*, rownum as rnum from (select
                                        d.department_name,
                                        e.first_name,
                                        e.salary,
                                        e.commission_pct
                                    from departments d
                                        inner join employees e
                                            on d.department_id = e.department_id
                                                where commission_pct is not null
                                                    order by commission_pct desc, salary desc) a)
                                                        where rnum <= 4;

--72. tblTodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 상위 5개를 가져오시오.
select a.*, rownum as 완료순서 from (select
                                        *
                                    from tbltodo
                                        where completedate is not null
                                            order by completedate - adddate asc) a
                                                where rownum <= 5;