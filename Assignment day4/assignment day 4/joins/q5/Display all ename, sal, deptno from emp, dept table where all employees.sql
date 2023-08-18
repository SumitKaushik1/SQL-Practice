INSERT into emp(empno,ename)
values (12345,"sumit");
SELECT ename, sal, dept.deptno,dname
from emp LEFT OUTER JOIN dept using(deptno);