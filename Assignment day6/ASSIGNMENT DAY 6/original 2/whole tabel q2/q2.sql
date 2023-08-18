show tables;
use day6_2;
show databases;
select database();
 show create table customer;
  CREATE TABLE customer (
  Cid int PRIMARY KEY,
  Name varchar(10) ,
  Address varchar(300) ,
  Contact int ,
  Credit_Limit int ,
) 
