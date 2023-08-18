SELECT deptno 
from emp
WHERE ename='KING';-- SUBQUERY
SELECT *
from emp
WHERE deptno=(SELECT deptno 
              from emp
              WHERE ename='KING');