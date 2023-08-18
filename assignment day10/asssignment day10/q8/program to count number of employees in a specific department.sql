use d1;
select deptno from emp order by deptno;
set @va=20;
call vacancy(@va);
select @va as vacany_in_department;

DELIMITER #
create procedure vacancy( INOUT p_deptno int)
BEGIN 
DECLARE v_vac int;
select count(*) into v_vac from emp where deptno=p_deptno;
IF(v_vac>=45)then
select 'no vacancy';
ELSEIF( v_vac<45) then
set p_deptno=45-v_vac;
END IF;  
END#

