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

                 
-- new syntax
SELECT emp.*,dept.*,grade
from emp JOIN dept ON emp.deptno=dept.deptno -- EMP TABLE JOIN TO DEPT TABLE BY THIS CONDITION
	 JOIN salgrade ON  sal BETWEEN losal AND HISAL -- HERE EMP TABLE JOIN TO SALGRADE TABLE BY THIS CONDITION
	WHERE HIREDATE< '1982-12-09';