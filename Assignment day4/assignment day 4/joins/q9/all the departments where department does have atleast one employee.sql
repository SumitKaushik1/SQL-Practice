
SELECT *
from emp;
SELECT *
from dept;

-- subquery--
SELECT deptno
from emp
group by deptno
having count(deptno)>0; -- or count(*)>0


-- above give three values 
SELECT emp.deptno
from dept JOIN emp ON emp.deptno =dept.deptno
-- order by emp.deptno-- bydefault ascending 
group by emp.deptno
having count(emp.deptno)>0
order by emp.deptno;
