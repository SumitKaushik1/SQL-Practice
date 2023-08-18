SELECT deptno,count(*)-- here also count repeating deptno 
from emp
GROUP BY deptno;
-- or 
SELECT deptno,count(deptno)-- only count repeating depeating no
from emp
GROUP BY deptno;

-- subquery--
SELECT deptno
from emp
group by deptno
having count(deptno)>0; -- or count(*)>0


-- above give three values 

SELECT dept.*
from dept
WHERE deptno IN (SELECT deptno -- IN for more than one value
              from emp
             group by deptno
              having count(deptno)>0);