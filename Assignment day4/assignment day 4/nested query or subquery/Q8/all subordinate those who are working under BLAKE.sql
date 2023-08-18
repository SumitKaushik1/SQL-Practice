SELECT empno
from emp
WHERE ename='BLAKE';-- SUBQUERY
SELECT *
from emp
WHERE mgr=(SELECT empno
           from emp
           WHERE ename='BLAKE');