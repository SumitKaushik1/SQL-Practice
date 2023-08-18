SELECT ENAME
from emp
WHERE deptno=(SELECT deptno
              from dept
             WHERE loc ='DALLAS');

-- subquery=
SELECT deptno
from dept
WHERE loc ='DALLAS';

-- subquery
-- OLD SYNTAX
SELECT emp.ename
from emp ,dept
WHERE emp.deptno=dept.deptno 
AND loc='DALLAS';
