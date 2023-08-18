SELECT *
from emp;
SELECT count(IFNULL(hiredate,0))
from emp
WHERE hiredate BETWEEN  '1981-01-01' AND '1981-12-31';
                
SELECT count(IFNULL(hiredate,0))
from emp
WHERE hiredate >= '1981-01-01' AND hiredate<= '1981-12-31';

SELECT count(empno) as 'employee number'
from emp
WHERE  year(hiredate)=1981 ;