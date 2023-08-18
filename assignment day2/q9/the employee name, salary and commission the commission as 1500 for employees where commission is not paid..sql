SELECT database();
SELECT * from emp;
SELECT DISTINCT ename,sal ,IFNULL(comm,1500) 
AS comm from emp;
