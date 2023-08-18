-- without join 

SELECT ename,empno,(SELECT dname from dept WHERE 
dept.deptno=emp.deptno)AS dname
from emp;


-- using join 
SELECT ename,empno,dname
from dept,emp
where dept.deptno=emp.deptno;
