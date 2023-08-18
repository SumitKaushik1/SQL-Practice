DROP TRIGGER  sal_less_avg;
select * from emp;
show variables like  '%autocommit%';
set autocommit=off;

-- note inser so all values stored in new keyword 
-- since i have to give error signal before inserting so before timing is give

delete from emp where empno=1;

DELIMITER #
create trigger sal_less_avg
BEFORE 
INSERT 
ON emp
for each row
BEGIN 

-- select avg(IFNULL(sal,0)) FROM EMP;

IF( NEW.sal< (select avg(IFNULL(sal,0)) FROM EMP where deptno=NEW.DEPTNO)) then 
SIGNAL SQLSTATE '45000' SET message_text='inserting salary is less than average salary';
END IF;
END#

INSERT INTO EMP (EMPNO,SAL,deptno)
VALUES(1,3329,10);

