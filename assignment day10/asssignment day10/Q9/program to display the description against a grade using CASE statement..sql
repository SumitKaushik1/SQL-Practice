USE D1;
drop procedure grade1
DELIMITER #
CREATE PROCEDURE GRADE1(  grd VARCHAR(200),OUT des_grd varchar(200))
BEGIN
CASE 
 WHEN grd ='A' THEN set  des_grd = 'EXCELLENT' ;
 WHEN grd ='B' THEN set  des_grd = 'VERY GOOD' ;
 WHEN grd ='C' THEN set  des_grd = 'GOOD' ;
 WHEN grd ='D' THEN set  des_grd = 'NICE' ;
WHEN grd ='E' THEN set  des_grd = 'POOR' ;
WHEN grd ='F' THEN set  des_grd = 'FAIL' ;
 ELSE
SELECT 'INVALID';
END CASE;
END#

set @s_var='F';

set @v_var=null;

CALL GRADE1(@s_var,@v_var)

select @s_var AS GRADE,@v_var AS PERFORMANCE;


0	31	17:12:09	CREATE PROCEDURE GRADE1(  grd VARCHAR(200),OUT des_grd varchar(200))
 BEGIN
 CASE 
 WHEN grd ='A' THEN set  des_grd = 'EXCELLENT'	Error Code: 1064. 
 You have an error in your SQL syntax; 
 check the manual that corresponds to your MySQL server version 
 for the right syntax to use near '' at line 4	
 
 0.000 sec