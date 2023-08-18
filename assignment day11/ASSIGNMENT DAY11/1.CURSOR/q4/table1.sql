 select * from cursor_q1;
 drop table cursor_q1;
use d1;
select * from cursor_q1;
-- all records but with  only not null constraint
 create table q1
 like dept;--  q1 table has all description as dept but not records

insert  into q1_cursor
select * from dept; -- bulk insert

CREATE TEMPORARY TABLE DEPT
(deptno int ,employees varchar(2000));
drop procedure name_add;
DELIMITER #
CREATE PROCEDURE name_add( dept1 int,dept2 int,dept3 int )
BEGIN
-- declare count int default 0;
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
    
INSERT INTO DEPT
SELECT deptnoo,v_namelist ;
		
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
INSERT INTO DEPT
SELECT deptnoo,v_namelist ;       
  
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
INSERT INTO DEPT
SELECT deptnoo,v_namelist ;       
  
select * from dept;
COMMIT;
END #
call name_add(10,20,30);
