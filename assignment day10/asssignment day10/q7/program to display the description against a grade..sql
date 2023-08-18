show tables;
select * from salgrade;

DELIMITER #
create procedure grade
( grd int
)
BEGIN
select * from salgrade where grade =grd;
 
END#

call grade(1);


drop procedure grade;
 