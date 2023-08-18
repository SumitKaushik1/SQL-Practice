SELECT *
from emp;

-- subquery 
SELECT hiredate
from emp
WHERE ename='SCOTT';

SELECT *
from emp
WHERE hiredate<(SELECT hiredate
                from emp
                WHERE ename='SCOTT');