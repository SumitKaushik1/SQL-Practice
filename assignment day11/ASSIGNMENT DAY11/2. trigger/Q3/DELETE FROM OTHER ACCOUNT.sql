drop  table emp1;
use d1;
show variables like '%autocommit%';

set autocommit =off;



select * from emp1;
select *  from emp;

create table emp1
like emp;

insert into emp1
select * from emp;

create table dept1
like dept ;

insert into dept1
select * from dept;

SELECT * FROM DEPT1;

DROP TRIGGER  delete_emp1

DELIMITER #
create trigger delete_emp1
BEFORE-- WE TRIGGER' BEFORE ' GENERALLY B/Z IN DEPT1 TABLE DATA WILL BE DELETED 
DELETE-- IN OLD KEYWORD CONATAIN OLD DATA OF DEPT1, EMP QUERY CAN USE THAT DATA TO 
ON DEPT1-- TO  DELETE ITS OWN RECORD (NOTE- EVEN WE CAN  USE "AFTER" TIMING
FOR EACH ROW -- TRIGGER ACTIVATE AFTER ALSO IT DOESNOT MAKE PROBLEM B/Z OLD KEYWORD 
BEGIN -- WILLS TORE THE DATA DEPT 1 WHICH IS GOING TO BE DELETED  EMP CAN USE EASILY
-- DECLARE CONTINUE HANDLER FOR  1415 SELECT 'YOU DID MISTAKE';
-- SELECT * FROM EMP1; -- WE CANNOT USE SELECT KEYWORD INSIDE TRIGGER
-- SELECT * FROM DEPT1;-- GIVE ERROR 1415=Not allowed to return a result set 
-- from a trigger

DELETE FROM EMP1 
WHERE DEPTNO=OLD.DEPTNO;

-- SELECT * FROM EMP1;
-- SELECT * FROM DEPT1;


END#


SELECT * FROM EMP1;
SELECT * FROM DEPT1;

DELETE FROM DEPT1
WHERE DEPTNO=10;

SELECT * FROM EMP1;
SELECT * FROM DEPT1;

ROLLBACK;

 
 
 
 END	Error Code: 1415. Not allowed to return a result set 
 from a trigger	0.000 sec
