SELECT sum(sal)
from emp;
-- select sum of sal column from emp table

SELECT sum(sal),deptno
from emp
group by deptno
order by deptno;