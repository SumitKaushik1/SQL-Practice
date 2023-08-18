
ALTER TABLE customer
add constraint check((year(sysdate())-year(dob))>10);

insert into customer(custid,dob)
values(1,'2022-01-01');

 create table cust_copy 
 as select * from customer;
 
 describe customer;
 show create table customer;
  desc cust_copy
  show create table cust_copy;
