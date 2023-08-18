use d1;
show tables;
select *
from emp;

DELIMITER #
CREATE PROCEDURE dept_no()
BEGIN
 SELECT IFNULL(deptno,'NO DEPARTMENT ALLOTED')AS 'DEPTNO.',
 count(*) as 'number of employee'
 from emp
 group by deptno
 order by deptno;
 
END#

call dept_no();
DROP PROCEDURE dept_no;


