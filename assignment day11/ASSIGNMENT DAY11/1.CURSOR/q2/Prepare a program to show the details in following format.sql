use d1;
CREATE TEMPORARY TABLE DEPT1
(deptno int ,dname varchar(1000),employees varchar(2000));
 drop temporary table dept1;
 
 drop procedure name_add1;

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
         FETCH cur into v_name;-- error come here when no record found by cursor in query
        
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
           FETCH cur into v_name;-- error come here when no record found by cursor in query
        
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
DELETE FROM DEPT1;
COMMIT;
END #
call name_add1(10,20,30);

select * from dept;
0	12	18:58:07	call name_add1(10,20,30);	
Error Code: 1406. Data too long for column 'LOC' at row 2	0.016 sec