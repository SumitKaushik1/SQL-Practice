select *
from emp
order by deptno; 
 
 SELECT deptno
from emp-- tsble loaded
group by deptno -- rows of table arranged according deptno
having  count(deptno)>3; -- having keyword 
-- is used when condition is applied afte grouping
-- in that arranged table deptno is repating how many times 
-- give by count 
-- 5th condition deptno will take that depto no 
-- whose count is greater than 3 
