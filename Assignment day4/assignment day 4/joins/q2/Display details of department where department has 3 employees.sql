SELECT *
from dept
;
SELECT deptno,  count(emp.deptno)
from emp
GROUP BY emp.deptno
;

SELECT dept.deptno,dname,loc
from dept NATURAL JOIN emp -- BOTH HAVA ONLY ONE COMMON COLUN THATS WHY USED 
GROUP BY emp.deptno-- GROUP IS FORMED OF DEPTNO
having count(emp.deptno)=3;-- THEN ONLY I CAN USE GROUP FUNCTION  WITHIN IN GROUP
-- WHEN GROUP FUNCTION ISUSED AS CONDITION ALWAYS USE HAVING KEYWORD 