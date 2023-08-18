ALTER TABLE customer
ADD COLUMN fname varchar(30) CHECK(fname not like '% %');

ALTER TABLE CUSTOMER
DROP COLUMN FNAME ;


ALTER TABLE customer
drop  constraint 'customer_chk_1' ;

insert into customer(custid,fname)
values(4,'sk');
select *
from customer;
-- 20:22:57	insert into customer(fname) values('sumitkaushik')	
-- Error Code: 1364. Field 'custid' doesn't have a default value	0.000 sec
rollback
show variables like '%autocommit%'
set autocommit =off;

delete from customer
where fname='sumitkaushik';
-- 20:26:35	delete from customer where custid=1	Error Code: 1292.
 -- Truncated incorrect DOUBLE value: 'C00001'	0.157 sec

 
  
 show create table customer;
