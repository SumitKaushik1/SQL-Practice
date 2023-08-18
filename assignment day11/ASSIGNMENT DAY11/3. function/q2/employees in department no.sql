SELECT nam_e(deptno)as employees,deptno from emp where ename='ward';

drop function nam_e;
DELIMITER #
create function nam_e(p_deptno int)
RETURNS VARCHAR(2000)
NOT DETERMINISTIC 
READS SQL DATA
BEGIN
DECLARE vname VARCHAR(200) ;
DECLARE vnamelist VARCHAR(500);

DECLARE  cur cursor for select ename from emp where deptno=p_deptno;

open cur;
BEGIN
DECLARE EXIT HANDLER FOR NOT FOUND BEGIN END;

pr:loop 
       fetch cur into vname;
       IF ( vnamelist IS NULL) THEN 
       set vnamelist =vname ;
      ELSE
       set vnamelist=concat(vnamelist,',',vname );
       END IF;
      
    END LOOP;
  
END;
  close cur;
 RETURN vnamelist;
-- return v_name;
END#
0	74	00:48:17	SELECT nam_e(deptno),deptno from emp where 
ename='clark'
 LIMIT 0, 1000	Error Code: 1054. Unknown column 'vname' 
 in 'field list'
 0.047 sec