SELECT dept.*
from dept JOIN emp  Using(deptno)-- normal join can  used with using keyword and bracket conatin the common column in which it is joied ,= operator only more than one common column is allowed 
WHERE emp.ename='JAMES';-- condition is applied 
-- on select on condition it is dept is shown



select *
from emp
where ename='JAMES';