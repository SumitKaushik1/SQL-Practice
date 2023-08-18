SELECT *
from emp
WHERE ename='JAMES';


SELECT deptno -- SUBQUERY
from emp
WHERE ename='JAMES';

SELECT *
from emp
WHERE ename='JAMES';
SELECT *
from dept -- table
WHERE deptno=(SELECT deptno -- SUBQUERY
			   from emp
              WHERE ename='JAMES');