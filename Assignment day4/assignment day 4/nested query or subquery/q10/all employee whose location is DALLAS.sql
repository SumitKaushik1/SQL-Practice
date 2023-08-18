SELECT *
from emp;
-- so
SELECT *
from dept;

SELECT deptno-- SUBQUERY
from dept-- table it is 
WHERE loc='DALLAS';

SELECT *
from emp
WHERE deptno=(  SELECT deptno-- SUBQUERY
                from dept-- table it is 
                WHERE loc='DALLAS');