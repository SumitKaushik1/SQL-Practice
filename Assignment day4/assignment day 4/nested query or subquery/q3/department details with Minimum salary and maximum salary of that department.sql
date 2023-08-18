select deptno -- group means one group name it will show
from emp-- like 10 is one depatment no on select that 10 group ponly can be shownn 
-- select enmae , deptno -> make no sense b/z will show one group 10 
 GROUP BY deptno;
-- Order by deptno  asc , sal desc ;
SELECT deptno , max(sal),min(sal)
from emp
GROUP BY deptno
order by deptno;-- group name is in oreder in acending order
  -- will come 
 
 
 SELECT deptno , (SELECT dname from dept WHERE dept.deptno=emp.deptno) AS DNAME, max(sal),min(sal)
 -- 10
-- 20
-- 30
from emp            -- SUBQUERY
 GROUP BY deptno     
 order by deptno;  -- JUST ABOVE GIVE DNAME( ALIAS) AS
                    -- ACCOUNTING
                    -- RESEARCH
                    -- SALES

 -- order by= group name is in oreder in acending order
  -- will come  10 ,20 ,30
 --  GROUP BY -> -- give three values 20,30,10