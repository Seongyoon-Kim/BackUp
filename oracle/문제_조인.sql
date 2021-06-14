-- 33. employees, departments. 사원들의 이름, 부서번호, 부서명을 가져오시오.
select * from employees;
select * from departments;

select
    e.first_name || ' ' || last_name,
    e.department_id,
    d.department_name
from employees e
    inner join departments d
        on e.department_id = d.department_id;

-- 34. employees, jobs. 사원들의 정보와 직업명을 가져오시오.
select * from jobs;
select * from employees;

select
    e.*,
    j.job_title
from employees e
    inner join jobs j
        on e.job_id = j.job_id;

-- 35. employees, jobs. 직무(job_id)별 최고급여(max_salary) 받는 사원 정보를 가져오시오.
select * from employees;
select * from jobs;
    
select
    e.job_id,
    j.max_salary
from employees e
    inner join jobs j
        on e.job_id = j.job_id
            group by e.job_id, j.max_salary;


-- 36. departments, locations. 모든 부서와 각 부서가 위치하고 있는 도시의 이름을 가져오시오.
select * from departments;
select * from locations;

select
    d.department_name,
    l.city
from departments d
    inner join locations l
        on d.location_id = l.location_id
            order by department_id;

-- 37. locations, countries. location_id 가 2900인 도시가 속한 국가 이름을 가져오시오.
select * from locations;
select * from countries;

select
    l.location_id,
    l.city,
    c.country_id,
    c.country_name
from locations l
    inner join countries c
        on l.country_id = c.country_id
            where l.location_id = 2900;

-- 38. employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.
select
    distinct department_id
from employees
    where salary >= 12000;
    
select
    first_name || ' ' || last_name,
    salary,
    department_id
from employees
    where department_id in (select distinct department_id from employees where salary >= 12000)
        order by department_id;

-- 39. employees, departments. locations.  'Seattle'에서(LOC) 근무하는 사원의 이름, 직위, 부서번호, 부서이름을 가져오시오.
select * from employees;
select * from departments;
select * from locations;

select
    e.first_name || ' ' || e.last_name,
    e.job_id,
    d.department_id,
    d.department_name,
    l.city
from employees e
    inner join departments d
        on e.department_id = d.department_id
            inner join locations l
                on d.location_id = l.location_id
                    where l.city = 'Seattle';

-- 40. employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.
select
    department_id
from employees
    where first_name = 'Jonathon';

select
    *
from employees
    where department_id = (select department_id from employees where first_name = 'Jonathon');
    


-- 41. employees, departments. 사원이름과 그 사원이 속한 부서의 부서명, 그리고 월급을 출력하는데 월급이 3000이상인 사원을 가져오시오.
select
    e.first_name || ' ' || e.last_name,
    d.department_name,
    e.salary
from employees e
    inner join departments d
        on e.department_id = d.department_id
            where salary >= 3000
                order by salary;

-- 42. employees, departments. 부서번호가 10번인 사원들의 부서번호, 부서이름, 사원이름, 월급을 가져오시오.
select
    e.department_id,
    d.department_name,
    e.first_name || ' ' || e.last_name,
    e.salary
from employees e
    inner join departments d
        on e.department_id = d.department_id
            where e.department_id = 10;

-- 43. employees, departments. 모든 부서의 정보를 가져오되 부서장이 있는 부서는 부서장의 정보도 같이 가져오시오.
select * from employees;

select
    *
from departments d
    inner join employees e
        on d.manager_id = e.employee_id;
    

-- 44. departments, job_history. 퇴사한 사원의 입사일, 퇴사일, 근무했던 부서 이름을 가져오시오.
select * from job_history;
select * from departments;

select
    j.start_date as 입사일,
    j.end_date as 퇴사일,
    d.department_name as 부서이름
from job_history j
    inner join departments d
        on j.department_id = d.department_id;

-- 45. employees. 사원번호와 사원이름, 그리고 그 사원을 관리하는 관리자의 사원번호와 사원이름을 출력하되 각각의 컬럼명을 '사원번호', '사원이름', '관리자번호', '관리자이름'으로 하여 가져오시오.
select * from employees;

select
    e1.employee_id as 사원번호,
    e1.first_name || ' ' || e1.last_name as 사원이름,
    e2.employee_id as 관리자번호,
    e2.first_name || ' ' || e2.last_name as 관리자이름
from employees e1
    inner join employees e2
        on e1.manager_id = e2.employee_id
            order by e1.employee_id;
-- 46. employees, jobs. 직책(Job Title)이 Sales Manager인 사원들의 입사년도와 입사년도(hire_date)별 평균 급여를 가져오시오. 년도를 기준으로 오름차순 정렬.
select * from jobs;

select
    e.hire_date,
    avg(e.salary)
from employees e
        inner join jobs j
            on e.job_id = j.job_id
                where j.job_title = 'Sales Manager'
                    group by e.hire_date
                        order by e.hire_date;

-- 47. employees, departments. locations. 각 도시(city)에 있는 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 도시명(city)과 평균연봉, 해당 도시의 사원수를 가져오시오. 단, 도시에 근 무하는 사원이 10명 이상인 곳은 제외하고 가져오시오.
select * from employees;
select * from departments;
select * from locations;

select
    l.city as 도시,
    to_char(round(avg(e.salary)) * 12, '999,999') as 평균연봉,
    count(*) as 사원수
from employees e
    inner join departments d
        on e.department_id = d.department_id
            inner join locations l
                on d.location_id = l.location_id
                        group by l.city
                            having count(*) < 10
                                order by round(avg(e.salary));

-- 48. employees, jobs, job_history. ‘Public  Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 가져오시오. 현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려 하지 말것
select * from employees;
select * from jobs; -- AC_ACCOUNT
select * from job_history;

select
    e.employee_id,
    e.first_name || ' ' || e.last_name
from employees e
    inner join jobs j
        on e.job_id = j.job_id
            inner join job_history h
                on e.department_id = h.department_id
                    where h.job_id = 'AC_ACCOUNT'
                        and h.end_date is not null
                            and e.job_id <> 'AC_ACCOUNT';

-- 49. employees, departments, locations. 커미션을 받는 모든 사람들의 first_name, last_name, 부서명, 지역 id, 도시명을 가져오시오.
select * from employees;
select * from departments;
select * from locations;

select
    e.first_name,
    e.last_name,
    d.department_name,
    l.location_id,
    l.city
from employees e
    left outer join departments d
        on e.department_id = d.department_id
            inner join locations l
                on d.location_id = l.location_id
                    where e.commission_pct is not null;

-- 50. employees. 자신의 매니저보다 먼저 고용된 사원들의 first_name, last_name, 고용일을 가져오시오.
select * from employees;

select
    e1.first_name,
    e1.last_name,
    e1.hire_date
from employees e1
    inner join employees e2
        on e1.manager_id = e2.employee_id
            where e1.hire_date < e2.hire_date;

-- 51. employees. 매니저로 근무하는 사원이 총 몇명인가?
select * from employees;
select * from jobs;

select
    count(*) as 매니저카운트
from employees
    where job_id like '%MAN' or job_id like '%MGR';

-- 52. employees. 자신의 매니저보다 연봉(salary)를 많이 받는 사원들의 성(last_name)과 연봉(salary)를 가져오시오.
select * from employees;

select
    e1.last_name as 성,
    to_char(e1.salary * 12, '999,999') as 연봉,
    e2.last_name as 매니저성,
    to_char(e2.salary * 12, '999,999') as 매니저연봉
from employees e1
    inner join employees e2
        on e1.manager_id = e2.employee_id
            where e1.salary > e2.salary;

-- 53. employees. 총 사원 수 및 2003, 2004, 2005, 2006 년도 별 고용된 사원들의 총 수를 가져오시오.
select * from employees;

select
    count(*) as 총사원수,
    count(case
        when hire_date between '03/01/01' and '03/12/31' then 1
    end) as "2003년도 고용 사원수",
    count(case
        when hire_date between '04/01/01' and '04/12/31' then 1
    end) as "2004년도 고용 사원수",
    count(case
        when hire_date between '05/01/01' and '05/12/31' then 1
    end) as "2005년도 고용 사원수",
    count(case
        when hire_date between '06/01/01' and '06/12/31' then 1
    end) as "2006년도 고용 사원수"
from employees;

-- 54. employees, departments. 2007년에 입사(hire_date)한 사원들의 사번(employee_id), 이름(first_name), 성(last_name), 부서명(department_name)을 가져오시오. 단, 부서에 배치되지 않은 사원은 'Not Assigned'로 가져오시오.
select * from employees;
select * from departments;

select
    e.employee_id,
    e.first_name,
    e.last_name,
    case
        when department_name is null then 'Not Assigned'
        when department_name is not null then department_name
    end as 부서명
from employees e
    left outer join departments d
        on e.department_id = d.department_id
            where e.hire_date between '07/01/01' and '07/12/31';

-- 55. employees. 직업이 'AD_PRESS' 인 사람은 A 등급을, 'ST_MAN' 인 사람은 B 등급을, 'IT_PROG' 인 사람은 C 등급을, 'SA_REP' 인 사람은 D 등급을, 'ST_CLERK' 인 사람은 E 등급을 기타는 0 을 부여하여 가져오시오.
select
    employees.*,
    case
        when job_id = 'AD_PRESS' then 'A'
        when job_id = 'ST_MAN' then 'B'
        when job_id = 'IT_PROG' then 'C'
        when job_id = 'SA_REP' then 'D'
        when job_id = 'ST_CLERK' then 'E'
        else '0'
    end as 등급
from employees;

-- 56. employees, jobs. 업무명(job_title)이 ‘Sales Representative’인 사원 중에서 연봉(salary)이 9,000이상, 10,000 이하인 사원들의 이름(first_name), 성(last_name)과 연봉(salary)를 가져오시오.
select
    e.first_name,
    e.last_name,
    e.salary,
    j.job_title
from employees e
    inner join jobs j
        on e.job_id = j.job_id
            where j.job_title = 'Sales Representative'
                and e.salary between 9000 and 10000;

-- 57. employees, departments. 부서별로 가장 적은 급여를 받고 있는 사원의 이름, 부서이름, 급여를 가져오시오. 이름은 last_name만 가져오고, 부서이름으로 오름차순 정렬하고, 부서가 같은 경우 이름을 기준 으로 오름차순 정렬하여 가져오시오. 
select
    d.department_name,
    min(e.salary)
from departments d
    inner join employees e
        on d.department_id = e.department_id
            group by d.department_name
                order by d.department_name;

    
    

-- 58. employees, departments, locations. 사원의 부서가 속한 도시(city)가 ‘Seattle’인 사원의 이름, 해당 사원의 매니저 이름, 
--사원 의 부서이름을 가져오시오. 이때 사원의 매니저가 없을 경우 ‘없음’이라고 가져오시오. 이름은 last_name만 가져오고, 
--사원의 이름을 오름차순으로 정렬하시오.
select * from employees;
select * from departments;
select * from locations;

select
    e1.last_name as 사원이름,
    case
        when e2.last_name is null then '없음'
        else e2.last_name
    end as 매니저이름,
    d.department_name as "사원의 부서 이름"
from employees e1
    left outer join employees e2
        on e1.manager_id = e2.employee_id
            inner join departments d
                on e1.department_id = d.department_id
                    inner join locations l
                        on d.location_id = l.location_id
                            where l.city = 'Seattle'
                                order by e1.last_name;


-- 59. employees, jobs. 각 업무(job) 별로 연봉(salary)의 총합을 구하고자 한다. 연봉 총합이 가장 높은 업무부터 업무명(job_title)과 연봉 총합을 가져오시오. 단 연봉총합이 30,000보다 큰 업무만 가져오시오.
select * from employees;
select * from jobs;

select
    j.job_title as 업무명,
    to_char(sum(e.salary * 12), '999,999,999') as 연봉총합
from employees e
    inner join jobs j
        on e.job_id = j.job_id
            group by j.job_title
                having sum(e.salary * 12) > 30000;

-- 60. employees, departments, locations, jobs. 각 사원(employee)에 대해서 사번(employee_id), 이름(first_name), 업무명(job_title), 부서 명(department_name)을 가져오시오. 단 도시명(city)이 ‘Seattle’인 지역(location)의 부서 (department)에 근무하는 사원을 사원번호 오름차순으로 가져오시오.
select * from employees;
select * from departments;
select * from locations;
select * from jobs;

select
    e.employee_id,
    e.first_name,
    j.job_title,
    d.department_name
from employees e
    inner join departments d
        on e.department_id = d.department_id
            inner join locations l
                on d.location_id = l.location_id
                    inner join jobs j
                        on e.job_id = j.job_id
                            where l.city = 'Seattle'
                                order by e.employee_id;

-- 61. employees. 2001~20003년사이에 입사한 사원의 이름(first_name), 입사일(hire_date), 관리자사번 (employee_id), 관리자 이름(fist_name)을 가져오시오. 단, 관리자가 없는 사원정보도 결과에 포함시켜 가져오시오.
select
    e1.first_name as 이름,
    e1.hire_date as 입사일,
    e2.employee_id as 관리자사번,
    e2.first_name as 관리자이름
from employees e1
    left outer join employees e2
        on e1.manager_id = e2.employee_id
            where e1.hire_date between '01/01/01' and '03/12/31';

-- 62. employees, departments. ‘Sales’ 부서에 속한 사원의 이름(first_name), 급여(salary), 부서이름(department_name)을 가져오시오. 단, 급여는 100번 부서의 평균보다 적게 받는 사원 정보만 가져오시오.
select * from employees;
select * from departments;

select
    e.first_name as 이름,
    e.salary as 급여,
    d.department_name as 부서이름
from employees e
    inner join departments d
        on e.department_id = d.department_id
            where d.department_name = 'Sales'
                and e.salary < (select avg(salary) from employees where department_id = 100);

-- 63. employees. last_name 에 'u' 가 포함되는 사원들과 동일 부서에 근무하는 사원들의 사번 및 last_name을 가져오시오.
select distinct department_id from employees where instr(last_name, 'u') > 0 or instr(last_name, 'U') > 0;
    
select
    employee_id,
    last_name
from employees
    where department_id in (select distinct department_id from employees where instr(last_name, 'u') > 0 or instr(last_name, 'U') > 0);

-- 64. employees, departments. 부서별 사원들의 최대, 최소, 평균급여를 조회하되, 평균급여가 ‘IT’ 부서의 평균급여보다 많고, ‘Sales’ 부서의 평균보다 적은 부서 정보만 가져오시오. 
select * from departments;

select
    e.department_id as 부서번호,
    max(e.salary) as 최대급여,
    min(e.salary) as 최소급여,
    round(avg(e.salary)) as 평균급여
from employees e
    inner join departments d
        on e.department_id = d.department_id
            group by e.department_id
                having avg(e.salary) > (select avg(salary) from employees e inner join departments d on e.department_id = d.department_id where d.department_name = 'IT')
                    and avg(e.salary) < (select avg(salary) from employees e inner join departments d on e.department_id = d.department_id where d.department_name = 'Sales');

-- 65. employees, departments. 각 부서별로 사원이 한명만 있는 부서만 가져오시오. 단, 사원이 없는 부서에 대해서는 ‘신생부서’라는 문자열을 가져오고,  결과는 부서명이 내림차순으로 정렬되게 하시오.
select * from employees;
select * from departments;

select
    department_id,
    count(*)
from employees
    group by department_id;
    
select
    case
        when count(e.employee_id) = 1 then d.department_name
        when count(e.employee_id) = 0 then d.department_name || ' 신생부서'
    end,
    count(*)
from departments d
    left outer join employees e
        on d.department_id = e.department_id
            group by d.department_name
                having count(*) = 1 or count(*) = 0;

-- 66. employees, departments. 부서별 입사월별 사원수를 가져오시오. 단, 사원수가 5명 이상인 부서만 가져오고,  결과는 부서이름 순으로 하시오.
select * from employees;
select * from departments;

select
    d.department_name,
    substr(e.hire_date, 4, 2),
    count(*)
from departments d
    inner join employees e
        on d.department_id = e.department_id
            group by d.department_name, substr(e.hire_date, 4, 2)
                having count(*) >= 5
                    order by d.department_name;

-- 67. employees, departments, locations, countries. 국가(country_name) 별 도시(city)별 사원수를 가져오시오.  부서정보가 없는 사원은 국가명과 도시명 대신에 ‘부서없음’을 넣어서 가져오시오.
select * from employees;
select * from departments;
select * from locations;
select * from countries;

select
    case
        when c.country_name is null then '부서없음'
        else c.country_name
    end as 국가명,
    case
        when l.city is null then '부서없음'
        else l.city
    end as 도시명,
    count(*)
from countries c
    inner join locations l
        on c.country_id = l.country_id
            left outer join departments d
                on l.location_id = d.location_id
                    right outer join employees e
                        on d.department_id = e.department_id
                            group by c.country_name, l.city;

-- 68. employees, departments. 각 부서별 최대 급여자의 아이디(employee_id), 이름(first_name), 급여(salary)를 가져오시오.
select * from employees;
select * from departments;

select
    d.department_id,
    max(salary)
from employees e
    inner join departments d
        on e.department_id = d.department_id
            group by d.department_id;
            
select
    e.employee_id,
    e.first_name,
    e.salary
from employees e
    left outer join departments d
        on e.department_id = d.department_id
    where (e.department_id, e.salary) in (select d.department_id, max(salary) from employees e left outer join departments d on e.department_id = d.department_id group by d.department_id)
        order by e.employee_id;



-- 69. employees. 커미션(commission_pct)별 사원수를 가져오시오. 커미션은 0.2, 0.25는 모두 0.2로, 0.3, 0.35는 0.3 형태로 바꾸시오. 단, 커미션 정보가 없는 사원들도 있는 데 커미션이 없는 사원 그룹은 ‘커미션 없음’으로 바꿔 가져오시오.
select
    case
        when '0' || substr(commission_pct, 1, 2) = 0 then '커미션없음'
        else '0' || substr(commission_pct, 1, 2)
    end,
    count(*)
from employees
    group by substr(commission_pct, 1, 2);

-- 70. employees, departments. 커미션(commission_pct)을 가장 많이 받은 상위 4명의 부서명(department_name), 사원명 (first_name), 급여(salary), 커미션(commission_pct) 정보를 가져오시오. 결과는 커미션 을 많이 받는 순서로 가져오되 동일한 커미션에 대해서는 급여가 높은 사원을 먼저 정렬하시오.
select * from employees;
select * from departments;

select a.*, rownum from (select
                    d.department_name,
                    e.first_name,
                    e.salary,
                    e.commission_pct
                from employees e
                    inner join departments d
                        on e.department_id = d.department_id
                            where commission_pct is not null
                                order by commission_pct desc) a
                                    where rownum <= 4
                                        order by rownum;

-- 71. tblInsa. 부서별 기본급이 가장 높은 사람을 가져오시오. (이름, 부서, 기본급) 
select * from tblInsa;

select buseo, max(basicpay) from tblInsa group by buseo;
    
select
    name,
    buseo,
    basicpay
from tblInsa
    where (buseo, basicpay) in (select buseo, max(basicpay) from tblInsa group by buseo);

-- 72. tblTodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 상위 5개를 가져오시오.
select * from tblTodo;

select
    *
from tblTodo
    where completedate is not null
        order by completeDate - addDate;
        
select
    *
from (select
    *
from tblTodo
    where completedate is not null
        order by completeDate - addDate)
            where rownum <= 5;
    








