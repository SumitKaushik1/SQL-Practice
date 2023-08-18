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
  Credit_Limit int 
);

ALTER TABLE customer 
RENAME  to Customer;

ALTER TABLE manufacturer
RENAME  to Manufacturer;

ALTER TABLE  customer
RENAME  to Customer;
CREATE TABLE manufacturer (
  MID int PRIMARY KEY,
  Manufacturer_Name varchar(20) ,
  Address varchar(200) ,
  Contact int 

) ;

show tables; 

drop table test;-- act like never exist  

use day6_2;

CREATE TABLE Product 
(  PID INT PRIMARY KEY ,
 Name VARCHAR(30),
 Color VARCHAR(10),
 Manufacturer_Date DATE ,
 Manufacturer_ID INT ,
 FOREIGN KEY( Manufacturer_ID) REFERENCES manufacturer(MID)
 );

SHOW TABLES;
describe manufacturer;
show create table manufacturer;

 CREATE TABLE `Order` -- tilt sign is used to make Order as name of table
( OID INT PRIMARY KEY ,
  Customer_id INT ,
  Reference INT ,
   Purchase_Date DATE,
   FOREIGN KEY(Customer_id ) REFERENCES  Customer(CID)
 );

CREATE TABLE `Order-Items`
( OID INT ,
  Product_ID INT,
  Qty INT,
  `Warrenty#` INT ,
  Unit_Price INT, 
  FOREIGN KEY(OID) REFERENCES `Order`(OID),
   FOREIGN KEY(Product_ID) REFERENCES Product(PID)
);