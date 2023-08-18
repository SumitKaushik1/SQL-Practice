ALTER TABLE ACCOUNT
ADD CONSTRAINT CHECK(opening_balance >=10000);

ALTER TABLE ACCOUNT
DROP CONSTRAINT account_chk_2 ;

select *
FROM ACCOUNT
DESCRIBE ACCOUNT;
SHOW CREATE TABLE ACCOUNT;
ACCOUNT	CREATE TABLE `account` (
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
   CONSTRAINT `account_chk_` CHECK ((`custid` <> NULL))
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
 00:21:56	ALTER TABLE ACCOUNT ADD CONSTRAINT CHECK( opening_balance>10000)
 Error Code: 3819. Check constraint 'account_chk_2' is violated.	
 1.078 sec
 
 00:28:22	ALTER TABLE ACCOUNT ADD CONSTRAINT CHECK(opening_balance > 10000)
 Error Code: 3819. Check constraint 'account_chk_2' is violated.	0.
 985 sec

