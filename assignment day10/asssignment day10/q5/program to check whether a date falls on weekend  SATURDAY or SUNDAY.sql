use d1;

SELECT 'WEEKEND';

select sysdate();

select curdate();

select DATE_FORMAT (curdate(),'%a');

select DATE_FORMAT ('2022-03-27','%a');

SELECT DATE_FORMAT (curdate(),'%a')='Mon';

-- (DATE_FORMAT (curdate(),'%a')='SUN'OR 'SUN') IF TRUE GIVE =1 OTHER WISE 0 IF FALSE

SELECT if( (DATE_FORMAT (curdate(),'%a')='SUN'OR 'SUN'),(SELECT 'WEEKEND'),(SELECT 'WEEKDAY')) AS DAY;

DELIMITER #
create procedure todays_day()
BEGIN
-- (DATE_FORMAT (curdate(),'%a')='SUN'OR 'SUN') IF TRUE GIVE =1 
-- OTHER WISE 0 IF FALSE
SELECT if( (DATE_FORMAT (curdate(),'%a')='SUN'OR 'SUN'),
(SELECT 'WEEKEND'),
(SELECT 'WEEKDAY')) AS DAY;
      
END#

CALL todays_day();