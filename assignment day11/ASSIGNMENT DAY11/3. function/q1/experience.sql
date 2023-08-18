select  year(curdate()) - year(hiredate)
 from emp
 where empno= empnoo;-- we cannot use select keyword
 -- inside function
drop function exper;

select * from emp;
-- SELECT exper(7789) ;
-- select empno from emp where ename='clark';
select exper(hiredate) ,hiredate from emp where ename='clark';

DELIMITER #
create function exper(hiredate date)
RETURNS int
NOT DETERMINISTIC
READS SQL DATA
BEGIN
DECLARE dte int;
set dte= year(curdate()) - year(hiredate);
 RETURN dte;
 END#
 
 drop function exper1;
DELIMITER #
create function exper1(empnoo int)
RETURNS int
NOT DETERMINISTIC
READS SQL DATA
BEGIN
DECLARE dte date;
DECLARE dif int;
-- select hiredate from emp where empno=empnoo;
 set dte=(select hiredate from emp where empno=empnoo);
set dif= year(curdate()) - year(dte);
RETURN dif;
END#
 
select exper1(empno)as experience,curdate() as 'today date' ,hiredate from emp where ename='clark';

 0	34	21:21:24	select exper1(empno) ,hiredate from emp where ename='clark'
 LIMIT 0, 1000	Error Code: 1265. Data truncated for column 'dif' at row 2	0.141 sec