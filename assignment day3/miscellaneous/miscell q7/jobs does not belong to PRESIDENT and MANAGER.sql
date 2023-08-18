SELECT *
from emp
WHERE job ='PRESIDENT' OR job = 'MANAGER';

SELECT *
from emp
WHERE job NOT IN ('PRESIDENT' , 'MANAGER');