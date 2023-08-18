USE D1;

-- how to find prime number

SELECT IS_PRIME(11);

DROP FUNCTION PRIME;

DELIMITER #
CREATE FUNCTION  IS_prime(  p_num INT )
RETURNS varchar(200)
NOT DETERMINISTIC
READS SQL DATA
BEGIN
DECLARE v_num INT DEFAULT 1;
DECLARE flag INT DEFAULT 1;
        IF( P_NUM=1 )then 
        RETURN 'NUMBER IS NOT PRIME';
        ELSEIF(P_NUM=2) THEN 
         RETURN 'NUMBER IS  PRIME';
        END IF;
           prime_end:LOOP
           set v_num=v_num+1;
		IF(v_num=(p_num-1))then 
        LEAVE prime_end;
        
		ELSEIF( MOD(p_num,v_num)=0) then
		   set flag=0;
           LEAVE prime_end;
           
         END IF;

           
           END LOOP;

 IF( flag=0)then 
 RETURN 'NUMBER IS NOT PRIME';
ELSE
RETURN'NUMBER IS  PRIME';

END IF;
END #

================================================================================
create temporary table ofprime
(prime_table int ); 

DROP PROCEDURE IS_PRIME;
CALL IS_PRIME(1,200);


DELIMITER #
CREATE PROCEDURE IS_prime(  p_num INT  ,  p_num1 INT )
BEGIN
DECLARE v_num INT DEFAULT NULL;
DECLARE flag INT DEFAULT NULL;
      `OUTER`:LOOP
		  set  p_num=p_num+1;
		  if(p_num=p_num1) then
		  leave `outer`;
		  END if;
           
		  SET V_NUM=1;
		  SET FLAG=1;
      
   
          IF(P_NUM=2) THEN 
		  INSERT INTO ofprime
          VALUES(2);
          END IF;
	      IF(P_NUM>2) THEN
                    prime_end:LOOP
                    
                    set v_num=v_num+1;
		            IF(v_num=(p_num-1))then 
					LEAVE prime_end;
        
		            ELSEIF( MOD(p_num,v_num)=0) then
					set flag=0;
                    LEAVE prime_end;
	                END IF;
					
                    END LOOP;
		 END IF;
		IF(FLAG=1) THEN
        INSERT INTO ofprime
        VALUES(p_num);
        END IF;
END loop;
select * from ofprime;
DELETE  FROM OFPRIME;
END #

