ALTER TABLE BRANCH
MODIFY COLUMN bid VARCHAR(6) unique not null;
DESCRIBE BRANCH

show create table branch;

branch	CREATE TABLE `branch` (
   `bid` varchar(6) DEFAULT NULL,
   `BNAME` varchar(30) NOT NULL,
   `bcity` varchar(30) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3