select deptno,max(sal),min(sal)
from emp
group by deptno
order by deptno;