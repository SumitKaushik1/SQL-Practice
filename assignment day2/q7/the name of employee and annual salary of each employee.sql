SELECT * from emp;
SELECT ename,(sal+IFNULL(comm,0)+1000) AS "Annual sal"
from emp;