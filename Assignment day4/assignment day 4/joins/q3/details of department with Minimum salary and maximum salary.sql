
SELECT dept.deptno,dname,loc,max(emp.sal )AS 'MAX SAL',min(emp.sal) AS 'MIN SAL'
from dept NATURAL JOIN emp -- BOTH must  HAVe ONLY ONE COMMON COLUN THATS WHY USED  if two columsn that fail ,only "=" operator work
GROUP BY emp.deptno-- GROUP IS FORMED OF DEPTNO
ORDER BY dept.deptno;
-- THEN ONLY I CAN USE GROUP FUNCTION  WITHIN IN GROUP
-- like max(), min() with in group