show databases;
use banking;
show tables;
desc account;
show create table account;
account	CREATE TABLE `account` (
   `acnumber` varchar(6) DEFAULT NULL,
   `CUSTID` varchar(6) NOT NULL,
   `bid` varchar(6) DEFAULT NULL,
   `opening_balance` int DEFAULT NULL,
   `aod` date DEFAULT NULL,
   `atype` varchar(10) DEFAULT NULL,
   `astatus` varchar(10) DEFAULT NULL,
   UNIQUE KEY `acnumber` (`acnumber`),
   KEY `custid` (`CUSTID`),
   CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CUSTID`) REFERENCES `customer` (`custid`),
   CONSTRAINT `account_chk_1` CHECK ((`CUSTID` <> NULL)),
   CONSTRAINT `account_chk_2` CHECK ((`opening_balance` >= 10000))
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 select * from account
 
 ALTER TABLE account 
 ADD FOREIGN KEY (bid) REFERENCES branch(bid);
 
 
 insert into account(custid,bid )
 values('1','1');
 
 0	19	15:42:56	insert into account(custid,bid )
  values('1','1')	Error Code: 1452. Cannot add or update 
  a child row: a foreign key constraint fails (`banking`.`account`, CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CUSTID`)
  REFERENCES `customer` (`custid`))	0.297 sec