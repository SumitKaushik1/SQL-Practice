
SELECT ename,comm
from emp
where comm = (select max(COMM) from emp);


SELECT ename, IFNULL(comm,'--') AS COMMISSION-- NO SPACE SINGLE QUOTES NOT REQUIRED
from emp
order by comm desc ;
SELECT ename, IFNULL(comm,'--') AS COMMISSION-- NO SPACE SINGLE QUOTES NOT REQUIRED
from emp
order by comm desc limit 1 ;
-- limit keyword show no of  row or record equal to which is 
-- specified ahead as integer value 

/*SELECT ename,comm,max(comm) AS 'HIGEST COMMISSION'
from emp
order by comm desc;-- WHILE calculating max came at last
-- smith wher it is null when you print max(comm) along ename and comm
-- so where at last was present while calculating max at that point ename and comm  it will give 
*/