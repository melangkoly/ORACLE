--  �� ����
--  �޿��� 14000���� or 17000�̻��� ����� �̸��� �޿�
SELECT first_name, salary
FROM employees
WHERE
    salary <= 14000 OR
    salary >= 17000;
    
--  ������
SELECT first_name, salary
from employees
WHERE not (salary <= 14000 OR salary >= 17000);

--  �μ� ID�� 90 and �޿� >= 20000
SELECT *FROM employees
WHERE department_id = 90 AND
    salary >= 20000;
    
--  where ���� BETWEEN ����
SELECT first_name, hire_date
From employees
WHERE hire_date BETWEEN '07/01/01' and '07/12/31'
--  2007�� 1�� 1�ϰ� 2007�� 12�� 31�� ���̿� �ش��ϴ� ��� ����� ��

--  IN ������
SELECT * FROM employees
Where department_id IN (10, 20, 40);

--  manager_id�� 100, 120, 147�� ����� ���
--  �� ������ + �� �������� ����
SELECT first_name, manager_id
from employees
where manager_id = 100 or
    manager_id = 120 or
    manager_id = 147;
    
--  IN ������ Ȱ��
SELECT first_name, manager_id
from employees
where manager_id in (100, 120, 147);

--  Like �˻�
--  % : ������ ������ �������� ���� ���ڿ� 
--  _ : �� ���� ������ ����

--  �̸��� am�� ������ ����� �̸��� �޿�
Select first_name, salary
from employees
where first_name like '%am%';

--  �̸��� �� ��° ���ڰ� a�� ����� �̸��� �޿�
Select first_name, salary
from employees
where first_name like '_a%';

--  �̸��� 4�� ° ���ڰ� a�� ����� �̸��� �޿�
select first_name, salary
from employees
where first_name like '___a%';

--  �̸��� 4������ ��� �� ������ �� ��° ���ڰ� a�� ����� �̸��� �޿�
select first_name, salary
from employees
where first_name like '__a_';

--  ORDER BY ����
--  ORDER BY department_id DESC / ASC 
--  ASC : �������� (�⺻) / DESC : �������� (ū �� -> ���� �� ��)

--  �μ���ȣ �������� ���� -> �μ���ȣ, �޿�, �̸� ���
select department_id, salary, first_name
from employees
order by department_id; -- ���������� ���� ����

--  ��������
select first_name, salary
from employees
where salary >= 10000
order by salary desc;

