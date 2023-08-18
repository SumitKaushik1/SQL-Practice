-- concatinate 
SELECT *
from emp;
SELECT CONCAT(ename,' is earning ',sal) AS "employee earning"
from emp;

use d1;
SELECT CONCAT(ename,' is earning ',sal,' dollars') AS "employee earning"
from emp;
