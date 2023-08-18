SELECT *
from salgrade;

SELECT *
from emp
order by sal;

select ename ,job,sal deptno
from emp
where sal<( select min( losal) from salgrade)
   or sal>( select max(hisal) from salgrade);
/*SELECT e.ename,e.job,e.sal,d.dname
from emp AS e,salgrade AS s,dept AS d
WHERE (e.sal < 700 OR e.sal>9999)-- either condition satisfied thai sout fo range -- emp tabel and sla grade jopin by this  condition 
 AND e.deptno=d.deptno-- HAS TO WRITE this  extra CONDITION OTEHR WISE CROSS JOIN HAPPEN
 -- BETWEEN DEPT TABEL AND JOINED TABle
 order by sal;
 -- b/z salary grade starts froms 700 lowest limit 
 -- goes to higest limit 9999
 -- all employee salary come in alary grade then table will be empty
 */