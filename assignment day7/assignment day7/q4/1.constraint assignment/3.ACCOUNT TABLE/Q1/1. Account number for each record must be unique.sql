SHOW TABLES
DESCRIBE ACCOUNT;
SHOW CREATE TABLE ACCOUNT
ALTER TABLE account
MODIFY COLUMN acnumber varchar(6) unique;
ACCOUNT	CREATE TABLE `account` (
   `acnumber` varchar(6) DEFAULT NULL,
   `custid` varchar(6) DEFAULT NULL,
   `bid` varchar(6) DEFAULT NULL,
   `opening_balance` int DEFAULT NULL,
   `aod` date DEFAULT NULL,
   `atype` varchar(10) DEFAULT NULL,
   `astatus` varchar(10) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3