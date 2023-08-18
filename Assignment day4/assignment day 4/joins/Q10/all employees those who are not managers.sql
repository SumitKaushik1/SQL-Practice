SELECT *
from emp
WHERE job<>'MANAGER';

-- OR 

SELECT *
from emp
WHERE job!='MANAGER';
-- new syntax
SELECT *
from emp JOIN dept ON emp.deptno=dept.deptno
		 JOIN salgrade ON sal BETWEEN losal AND hisal
WHERE emp.job<> 'MANAGER';
