DELIMITER #
create procedure naturalnum(p_num int)
BEGIN
 DECLARE v_var int DEFAULT 1;
 REPEAT 
 
 select v_var;
 insert into `natural`(num)
 values(v_var);
 SET v_var=v_var+1;

 UNTIL (v_var>p_num)
  END REPEAT;
  select * from`natural`;
END #
 drop  procedure naturalnum;
CALL naturalnum(5)

show variables like "%autocommit%";
set autocommit=off;
create temporary table `natural`(num int)
select * from `natural`

drop table `natural`;

