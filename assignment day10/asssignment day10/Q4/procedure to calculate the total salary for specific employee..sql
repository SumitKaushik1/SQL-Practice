use d1;

select * from emp;

select * from bonus;

describe emp;

DELIMITER #
create procedure totalsal
( empname varchar(10) )
 BEGIN
 DECLARE total DOUBLE ;
select  sal +IFNULL(comm,0) into total -- select get the valuue from server sal +IFNULL(comm,0) put into total
 from emp
where empno=( select empno from emp where  ename=empname);
 
 select total AS 'total salary of employee';

 END#
 
 call totalsal('allen');
 drop procedure  totalsal;
 

 