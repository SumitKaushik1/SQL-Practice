SELECT ename, sal, dept.deptno,dname
from emp RIGHT OUTER JOIN dept using(deptno);
