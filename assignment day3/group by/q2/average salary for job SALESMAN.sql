SELECT avg(IFNULL(sal,0)) AS average -- here come column 
from emp
WHERE job='SALESMAN'; -- here come record or row