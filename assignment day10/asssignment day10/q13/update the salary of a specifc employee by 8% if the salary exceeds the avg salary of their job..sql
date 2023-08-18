select empno
from emp 
where  sal>(select avg(IFNULL(sal,0)) from emp) ;

create temporary table empn
as select * from emp ;

delete from empn;

INSERT INTO EMPN
select * from emp;

select * from empn;
COMMIT;

update empn
set sal=(1.08*sal) where empno IN (select empno
								from emp 
                                 where  sal>(select avg(IFNULL(sal,0)) from emp) );

show variables like '%autocommit%';

ROLLBACK;

select sal
from empn
where  sal>(select avg(IFNULL(sal,0)) from empnn) ;

select sal
from emp 
where  sal>(select avg(IFNULL(sal,0)) from empnn) ;

select * from emp;

create temporary table empn
as select * from emp ;

create temporary table empnn
as select * from emp ;-- two tables b/z cannot reopen a same table
-- from clause 

drop procedure salincrease;
CALL salincrease();

DELIMITER #
CREATE PROCEDURE salincrease()
BEGIN

update emp
set sal=(1.08*sal) where empno IN (select empno
								   from empnn

                                 where  sal>(select avg(IFNULL(sal,0)) from empn) );
COMMIT;
END#

show tables;
select * from dept;

