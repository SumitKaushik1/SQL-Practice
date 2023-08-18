DELIMITER #
create procedure day_specidate
( 
date DATE
)
BEGIN
SELECT DATE_FORMAT( date,'%a') as DAY;
END#

 DROP PROCEDURE  day_specidate;
CALL day_specidate(sysdate());