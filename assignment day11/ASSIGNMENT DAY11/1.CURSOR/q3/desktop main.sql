use d1;

select database();

show variables like '%autocommit%';

set autocommit =off;

CREATE TEMPORARY TABLE  copy
select * from emp where 1=2;

SELECT * FROM EMP WHERE DEPTNO=10;

drop temporary table copy;


ALTER TABLE COPY
drop primary key;

0	45	21:06:16	ALTER TABLE COPY
 drop primary key	Error Code: 1075. Incorrect table definition; there can be only 
 one auto column and it must be defined as a key	0.000 sec

ALTER TABLE COPY
MODIFY COLUMN EMPNO INT  PRIMARY KEY AUTO_INCREMENT  ;


select * from copy;




delete from copy;
drop procedure inc_count1;






DELIMITER #
create procedure inc_count1(dept1 int,dept2 int,dept3 int)
BEGIN 
DECLARE v_var varchar(200);
DECLARE cnt int DEFAULT 0;
DECLARE deptnoo int DEFAULT dept1;
DECLARE NUM INT DEFAULT 0;

DECLARE  cur CURSOR  for select distinct ename from emp where deptno =deptnoo order by ename;
SET NUM=(  SELECT COUNT(*) FROM EMP WHERE DEPTNO=DEPTNOO);
open cur;
BEGIN

DECLARE EXIT  HANDLER FOR NOT FOUND BEGIN END; -- EXIT-> EXIT THE BOUND IN WHICH IT IS PRESENT
  `OUTER 1` :LOOP
               FETCH CUR INTO v_var;
					
                     while (cnt<(NUM*10)) DO -- LOOP TILL CONDITION IS FALSE 
                     
                     insert into copy(empno,ename,job,mgr,hiredate,sal,comm,deptno)
                     select empno, ename,job,mgr,hiredate,sal,comm,deptno from emp where ename =v_var;
				     set cnt=cnt +1;
                     END WHILE ;
			  set cnt=0;
			END LOOP;
END;
close cur;

set deptnoo=dept2;
SET NUM=( SELECT COUNT(*) FROM EMP WHERE DEPTNO=DEPTNOO);
open cur;
BEGIN
DECLARE EXIT  HANDLER FOR NOT FOUND BEGIN END; -- EXIT EXIT THE BOUND IN WHICH IT IS PRESENT
  `OUTER 1` :LOOP
               FETCH CUR INTO v_var;
					
                     while (cnt<(NUM*10)) DO -- LOOP TILL CONDITION IS FALSE 
                     
                     insert into copy(empno,ename,job,mgr,hiredate,sal,comm,deptno)
                     select empno, ename,job,mgr,hiredate,sal,comm,deptno from emp where ename =v_var;
				     set cnt=cnt +1;
                     END WHILE ;
			  set cnt=0;
			END LOOP;
END;
close cur;

set deptnoo=dept3;
SET NUM=( SELECT COUNT(*) FROM EMP WHERE DEPTNO=DEPTNOO);
open cur;
BEGIN
DECLARE EXIT  HANDLER FOR NOT FOUND BEGIN END; -- EXIT EXIT THE BOUND IN WHICH IT IS PRESENT
  `OUTER 1` :LOOP
               FETCH CUR INTO v_var;
				
                     while (cnt<(NUM*10)) DO -- LOOP TILL CONDITION IS FALSE 
                     
                     insert into copy(empno,ename,job,mgr,hiredate,sal,comm,deptno)
                     select empno, ename,job,mgr,hiredate,sal,comm,deptno from emp where ename =v_var;
				     set cnt=cnt +1;
                     END WHILE ;
			  set cnt=0;
			END LOOP;
END;
close cur;
SELECT * FROM COPY;

END#
call inc_count1(10,20,30);

select count(*) from copy where ename='ward';

0	80	20:28:08	call inc_count1(10)	
Error Code: 1136. Column count doesn't 
match value count at row 1	0.016 sec

0	31	19:46:21	call copy(10)	Error Code: 1305. 
PROCEDURE d1.copy does not exist	0.000 sec