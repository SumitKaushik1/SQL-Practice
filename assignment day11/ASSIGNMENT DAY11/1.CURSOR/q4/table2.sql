drop procedure name_add1;
use d1;
drop temporary table dept;
CREATE TEMPORARY TABLE DEPT1
(deptno int ,dname varchar(1000),employees varchar(2000));
DELIMITER #
CREATE PROCEDURE name_add1( dept1 int ,dept2 int,dept3 int )
BEGIN

DECLARE deptnoo int DEFAULT dept1;
DECLARE  v_name VARCHAR(200)DEFAULT NULL;
DECLARE v_namelist VARCHAR(2000)  DEFAULT NULL;
DECLARE loopstop BOOLEAN DEFAULT false;
DECLARE cur CURSOR FOR SELECT ename from emp where deptno=deptnoo;
DECLARE CONTINUE HANDLER FOR 1329 set loopstop=TRUE; 

open cur;
`first`:LOOP
         FETCH cur into v_name;
         if(loopstop) then
         leave `first`; 
         end if;
      
        
        if (v_namelist IS NULL) then
        set   v_namelist=v_name;
        else
        set v_namelist=concat(v_namelist,',',v_name);
		end if;
	
        END LOOP ;
        
CLOSE cur;
    
INSERT INTO DEPT1
SELECT deptnoo,(select dname from dept where deptno=deptnoo),v_namelist ;
	
set deptnoo=dept2;
set   v_name =null; 
set  v_namelist =null;
set loopstop = false;
       

                               
 open cur;
    `second`:LOOP
         FETCH cur into v_name;
        
         if(loopstop=true) then
         leave `second`; 
         end if;
         if (v_namelist IS NULL) then
         set   v_namelist=v_name;
         else
		set v_namelist=concat(v_namelist,',',v_name);
		end if;
        END LOOP ;
CLOSE cur;
INSERT INTO DEPT1
SELECT deptnoo,(select dname from dept where deptno=deptnoo),v_namelist ;       
  
set deptnoo=dept3;
set   v_name =null; 
set  v_namelist =null;
set loopstop = false;
       

                               
open cur;
      `THIRD`:LOOP
           FETCH cur into v_name;
        
           if(loopstop=true) then
           leave `THIRD`; 
           end if;
           if (v_namelist IS NULL) then
		   set   v_namelist=v_name;
           else
           set v_namelist=concat(v_namelist,',',v_name);
		  end if;
          END LOOP ;
CLOSE cur;
INSERT INTO DEPT1
SELECT deptnoo,(select dname from dept where deptno=deptnoo),v_namelist ;       
  
select * from dept1;


END #
call name_add1(10,20,30);

select * from cursor_q2;
create table cursor_q2
as select * from dept1;
0	77	17:42:19	call name_add1(10,20,30)	
Error Code: 1054. Unknown column 'dname' in 'field list'	0.031 sec