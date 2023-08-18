SELECT *
from emp
WHERE job<>'MANAGER'
order by deptno;
-- or 
SELECT *
from emp
WHERE job!='MANAGER'
order by deptno;

SELECT * 
from emp
WHERE job<>( SELECT job -- at last give one value manager
              from emp
              GROUP BY job-- arrange according to job table or record
			 having job='MANAGER');-- group condition

SELECT *
from emp 
WHERE empno not in ( SELECT  DISTINCT IFNULL(mgr,0)
                      from emp --  MGER ARE THOSE EMPNO WHO ARE MANAGER 
					);-- GIVE DISTICT VALUES 
-- IF NULL B/Z EMPMNO COMPARES TO NULL IE = NULL EMPNO GIVE NULL NO OUTPUT COME




SELECT  DISTINCT IFNULL(mgr,0)
                      from emp
show tables;
SELECT *
from dept;