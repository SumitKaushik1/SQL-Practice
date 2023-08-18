SELECT *
from emp;

SELECT sal-- subquery always write first 
from emp
WHERE ename='FORD';

SELECT *
from emp
WHERE sal < (SELECT sal-- subquery always write first 
			  from emp
              WHERE ename='FORD'
			);