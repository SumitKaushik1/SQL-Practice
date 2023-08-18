
 -- old syntax join 
SELECT ename, sal, grade, dname, loc  -- at last this i shown
from emp,dept,salgrade-- her tell which table will be used 
WHERE emp.deptno=dept.deptno -- emp table and  dept tabel is joined
AND sal BETWEEN losal AND hisal;-- here emp table and salgrade table is joined 