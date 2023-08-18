SELECT *
from emp
WHERE hiredate BETWEEN '1981-09-28' AND '1981-12-03';
-- OR WHERE (hiredate >= '1981-09-28') AND (hiredate<= '1981-12-03');