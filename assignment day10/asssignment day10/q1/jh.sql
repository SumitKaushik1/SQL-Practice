drop procedure max_min;
call max_min(12,123);
DELIMITER #
create procedure max_min(d_first INT ,d_second INT )
BEGIN
DECLARE  num_small,num_large INT;
IF (d_first>d_second) THEN
  set  num_small=d_second;
   set num_large=d_first;
   select  num_small as'small';
  select num_large as 'large';
  
  ELSEIF( d_first<d_second) THEN 
   set  num_small=d_first;
   set num_large=d_second;
   select  num_small as'small';
  select num_large as 'large';
  ELSE
  SELECT 'BOTH NUMBERS ARE EQUAL' as 'num';
  END IF;
  
END #