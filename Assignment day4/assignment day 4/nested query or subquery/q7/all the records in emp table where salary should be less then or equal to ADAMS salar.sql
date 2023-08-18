SELECT  sal-- SUBQUERY
from emp 
WHERE ename='ADAMS';

SELECT *
from emp
WHERE sal<=(SELECT  sal-- SUBQUERY
              from emp 
             WHERE ename='ADAMS');