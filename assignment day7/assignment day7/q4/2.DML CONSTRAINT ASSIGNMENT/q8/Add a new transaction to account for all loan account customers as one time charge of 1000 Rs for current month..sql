
use banking;
select * from copy_tran_detail;
select * from loan ;
select * from customer;

select acnumber
from account 
where custid IN
          (select custid from loan );
          

          
 

INSERT INTO copy_tran_detail(acnumber,dot,medium_of_transaction,transaction_type,transaction_amount)
select acnumber,CURDATE(),'online','withdrawl','1000'  from 
( ( select acnumber from account where custid IN(select custid from loan ) ) )t;
-- THE TABLE COME FROM BRACKET IS GIVEN ALIAS NAME t
