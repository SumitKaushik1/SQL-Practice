

use d1;
show variables like '%autocommit%';
set autocommit=off;
CREATE TEMPORARY TABLE DEPT
(deptno int ,employees varchar(2000));

select * from emp order by deptno;

drop  procedure name_add;

DELIMITER #
CREATE PROCEDURE name_add( dept1 int,dept2 int,dept3 int )
BEGIN
-- declare count int default 0;
DECLARE deptnoo int DEFAULT dept1;
DECLARE  v_name VARCHAR(200)DEFAULT NULL;
DECLARE v_namelist VARCHAR(2000)  DEFAULT NULL;
DECLARE loopstop BOOLEAN DEFAULT false;
DECLARE cur CURSOR FOR SELECT ename from emp where deptno=deptnoo;
DECLARE CONTINUE HANDLER FOR 1329 set loopstop=TRUE; -- 1329 specific  error come in not found type of error
-- CONTINUE MEANS CONTINUE THE PROGRAM IE LOOP GOES ON 
-- handler tell when 1329 error come continue the program 
-- but before continue make looop stop as false							
                              
                                
                                
 open cur;
`first`:LOOP
    FETCH cur into v_name;-- error come here when no record found by cursor in query
        -- so below lines will not be executed b/z handler catch error before it 
       
        if(loopstop) then
         leave `first`; 
         end if;
      
        -- FETCH cur into v_name; if i write this here then cursor move ahead but before handler catch error of not found the lines below will be executed 
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
        INSERT INTO DEPT
		SELECT deptnoo,v_namelist ;       
  
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
        INSERT INTO DEPT
		SELECT deptnoo,v_namelist ;       
  


select * from dept;
DELETE FROM DEPT;
COMMIT;
END #
call name_add(10,20,30);

0	145	16:30:45	call name_add(10,20);	Error Code: 1406.
 Data too long for column 'v_namelist' at row 1	0.032 sec