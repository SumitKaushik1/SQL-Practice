show create table `order`;
DESCRIBE `ORDER`;
DESCRIBE CUST_COPY;
SHOW TABLES;
DESCRIBE CUSTOMER;

ALTER TABLE `ORDER`
MODIFY customer_id int unique not null;-- in one table only one primary key must be there 
-- i need another key act like primary key then if only unique then null is allowed to insert in that column 
-- if i insert constraint not null then this key act like a primary key   

ALTER TABLE cust_copy
ADD FOREIGN KEY(cid) REFERENCES `order`(customer_id);-- it means cid  of cust_copy must validate 
-- from order customer column is it there=foreign key 

0	17	15:36:38	ALTER TABLE cust_copy
ADD FOREIGN KEY(cid) REFERENCES cust_copy(customer_id)	
Error Code: 3734. Failed to add the foreign key constraint. 
Missing column 'customer_id' for constraint 'cust_copy_ibfk_1' in 
the referenced table 'cust_copy'	0.032 sec
