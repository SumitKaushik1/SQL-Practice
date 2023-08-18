
-- NOTE NESTED TRIGGER IS NOT POSSIBELE B/ Z  TRIGGER WITHIN INSIDE MAKE RECUSRISION INFINITE LOOP
 use d1;
rollback;

CREATE TEMPORARY TABLE scott_schema_audit
(table_name varchar(100), operation_name varchar(100),
 db_user varchar(100), change_date DATE)

select * from emp;
select * from dept;
select * from salgrade;

SELECT * FROM scott_schema_audit;

drop procedure record;

DELIMITER $
CREATE PROCEDURE  RECORD(`table_name` varchar(100)
,operation varchar(100),`user` varchar(100))
BEGIN
 INSERT INTO scott_schema_audit
 VALUES(`table_name`,operation,`user`,curdate());
END$


 
drop  trigger ins_emp;
DELIMITER #
create trigger ins_emp
AFTER 
INSERT
ON emp
FOR EACH ROW
BEGIN

CALL  record('EMP','INSERT',USER());
END#

insert into emp(empno,ename)
values(1,'sumit');



drop  trigger up_emp;
DELIMITER #
create trigger up_emp
AFTER 
UPDATE
ON emp
FOR EACH ROW
BEGIN

CALL  record('EMP','UPDATE',USER());
END#

UPDATE emp 
SET ENAME='KAUSHIK' WHERE EMPNO=1;


drop  trigger del_emp;
DELIMITER #
create trigger del_emp
BEFORE
DELETE
ON emp
FOR EACH ROW
BEGIN

CALL  record('EMP','DELETE',USER());
END#

DELETE FROM emp 
WHERE ENAME='KAUSHIK';


 
drop  trigger ins_dept;
DELIMITER #
create trigger ins_dept
AFTER 
INSERT
ON dept 
FOR EACH ROW
BEGIN

CALL  record('dept','INSERT',USER());
END#

insert into dept(deptno,dname)
values(1,'accounts');

drop  trigger up_dept;
DELIMITER #
create trigger up_dept
AFTER 
UPDATE
ON dept
FOR EACH ROW
BEGIN

CALL  record('dept','UPDATE',USER());
END#

UPDATE dept
SET dname='man' WHERE deptno=1;


drop  trigger del_dept;
DELIMITER #
create trigger del_dept
BEFORE
DELETE
ON dept
FOR EACH ROW
BEGIN

CALL  record('dept','DELETE',USER());
END#

DELETE FROM dept
WHERE dname='man';

use d1;
select * from salgrade;
 
drop  trigger ins_salgrade;
DELIMITER #
create trigger ins_salgrade
AFTER 
INSERT
ON salgrade
FOR EACH ROW
BEGIN

CALL  record('salgrade','INSERT',USER());
END#

insert into salgrade(grade)
values(6);

drop  trigger up_salgrade;
DELIMITER #
create trigger up_salgrade
AFTER 
UPDATE
ON salgrade
FOR EACH ROW
BEGIN

CALL  record('salgrade','UPDATE',USER());
END#

UPDATE salgrade
SET grade=7 WHERE hisal is null;


drop  trigger del_salgrade;
DELIMITER #
create trigger del_salgrade
BEFORE
DELETE
ON salgrade
FOR EACH ROW
BEGIN

CALL  record('salgrade','DELETE',USER());
END#

DELETE FROM salgrade
WHERE grade=6;








