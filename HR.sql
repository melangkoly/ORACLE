--  논리 조합
--  급여가 14000이하 or 17000이상인 사원의 이름과 급여
SELECT first_name, salary
FROM employees
WHERE
    salary <= 14000 OR
    salary >= 17000;
    
--  여집합
SELECT first_name, salary
from employees
WHERE not (salary <= 14000 OR salary >= 17000);

--  부서 ID가 90 and 급여 >= 20000
SELECT *FROM employees
WHERE department_id = 90 AND
    salary >= 20000;
    
--  where 절의 BETWEEN 연습
SELECT first_name, hire_date
From employees
WHERE hire_date BETWEEN '07/01/01' and '07/12/31'
--  2007년 1월 1일과 2007년 12월 31일 사이에 해당하는 모든 경우의 수

--  IN 연산자
SELECT * FROM employees
Where department_id IN (10, 20, 40);

--  manager_id가 100, 120, 147인 사원의 명단
--  비교 연산자 + 논리 연산자의 조합
SELECT first_name, manager_id
from employees
where manager_id = 100 or
    manager_id = 120 or
    manager_id = 147;
    
--  IN 연산자 활용
SELECT first_name, manager_id
from employees
where manager_id in (100, 120, 147);

--  Like 검색
--  % : 임의의 길이의 지정되지 않은 문자열 
--  _ : 한 개의 임의의 문자

--  이름에 am을 포함한 사원의 이름과 급여
Select first_name, salary
from employees
where first_name like '%am%';

--  이름의 두 번째 글자가 a인 사원의 이름과 급여
Select first_name, salary
from employees
where first_name like '_a%';

--  이름의 4번 째 글자가 a인 사원의 이름과 급여
select first_name, salary
from employees
where first_name like '___a%';

--  이름이 4글자인 사원 중 끝에서 두 번째 글자가 a인 사원의 이름과 급여
select first_name, salary
from employees
where first_name like '__a_';

--  ORDER BY 정렬
--  ORDER BY department_id DESC / ASC 
--  ASC : 오름차순 (기본) / DESC : 내림차순 (큰 것 -> 작은 것 순)

--  부서번호 오름차순 정렬 -> 부서번호, 급여, 이름 출력
select department_id, salary, first_name
from employees
order by department_id; -- 오름차순은 생략 가능

--  내림차순
select first_name, salary
from employees
where salary >= 10000
order by salary desc;

