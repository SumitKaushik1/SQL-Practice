SELECT dept.*
from dept ,emp
group by emp.deptno-- 3 values get 10,20,30
having  dept.deptno<>emp.deptno
--  upto 4rth line three times dept information come b/z three times compparision is done
limit 1; 
-- now topmost record is shown 
-- or
SELECT dept.*
from dept ,emp
group by emp.deptno-- 3 values get 10,20,30
having  dept.deptno!=emp.deptno
--  upto 4rth line three times dept information come b/z three times compparision is done
limit 1; 
-- now topmost record is shown 