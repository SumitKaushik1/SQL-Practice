ALTER TABLE ACCOUNT 


show create table branch
branch	CREATE TABLE `branch` (
   `BID` varchar(10) NOT NULL,
   `BNAME` varchar(30) NOT NULL,
   `bcity` varchar(30) DEFAULT NULL,
   PRIMARY KEY (`BID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
 show create table account ;
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
   KEY `bid` (`bid`),
   CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CUSTID`) REFERENCES `customer` (`custid`),
   CONSTRAINT `account_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `branch` (`BID`) ON UPDATE CASCADE,
   CONSTRAINT `account_chk_1` CHECK ((`CUSTID` <> NULL)),
   CONSTRAINT `account_chk_2` CHECK ((`opening_balance` >= 10000))
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3

ALTER TABLE ACCOUNT 
MODIFY COLUMN BID VARCHAR(10);

account	CREATE TABLE `account` (
   `acnumber` varchar(6) DEFAULT NULL,
   `CUSTID` varchar(6) NOT NULL,
   `BID` varchar(10) DEFAULT NULL,
   `opening_balance` int DEFAULT NULL,
   `aod` date DEFAULT NULL,
   `atype` varchar(10) DEFAULT NULL,
   `astatus` varchar(10) DEFAULT NULL,
   UNIQUE KEY `acnumber` (`acnumber`),
   KEY `custid` (`CUSTID`),
   KEY `bid` (`BID`),
   CONSTRAINT `account_ibfk_1` FOREIGN KEY (`CUSTID`) REFERENCES `customer` (`custid`),
   CONSTRAINT `account_ibfk_2` FOREIGN KEY (`BID`) REFERENCES `branch` (`BID`) ON UPDATE CASCADE,
   CONSTRAINT `account_chk_1` CHECK ((`CUSTID` <> NULL)),
   CONSTRAINT `account_chk_2` CHECK ((`opening_balance` >= 10000))
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
 SHOW CREATE TABLE LOAN 
 LOAN	CREATE TABLE `loan` (
   `custid` varchar(6) NOT NULL,
   `bid` varchar(6) DEFAULT NULL,
   `loan_amount` varchar(10) DEFAULT NULL,
   `loan_type` varchar(10) NOT NULL,
   `loan_status` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`custid`,`loan_type`),
   KEY `bid` (`bid`),
   CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
   CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`bid`) REFERENCES `branch` (`BID`) ON UPDATE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
 ALTER TABLE LOAN 
 MODIFY COLUMN BID VARCHAR(10);
 
 LOAN	CREATE TABLE `loan` (
   `custid` varchar(6) NOT NULL,
   `BID` varchar(10) DEFAULT NULL,
   `loan_amount` varchar(10) DEFAULT NULL,
   `loan_type` varchar(10) NOT NULL,
   `loan_status` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`custid`,`loan_type`),
   KEY `bid` (`BID`),
   CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
   CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`BID`) REFERENCES `branch` (`BID`) ON UPDATE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
  
