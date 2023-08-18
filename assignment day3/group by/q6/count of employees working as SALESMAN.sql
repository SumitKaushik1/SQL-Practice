SELECT count(IFNULL(job,0)) AS 'employee number'
from emp
WHERE job='SALESMAN';
-- it means that count job column from emp table job record or row is salesman
SELECT job 
from emp;

SELECT count(empno) AS 'employee number'
from emp
WHERE job='SALESMAN';
