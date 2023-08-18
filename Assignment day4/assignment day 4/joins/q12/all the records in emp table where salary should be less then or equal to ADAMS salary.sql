-- subquery
-- OLD SYNTAX


SELECT *
from emp
WHERE sal<=(SELECT sal
           from emp
		  WHERE ename='ADAMS');
          
		
-- OLD SYNTAX-- join 
SELECT emp.*
from emp ,dept,salgrade
WHERE (emp.deptno=dept.deptno AND (sal BETWEEN losal AND hisal) )
AND sal< 1100;

