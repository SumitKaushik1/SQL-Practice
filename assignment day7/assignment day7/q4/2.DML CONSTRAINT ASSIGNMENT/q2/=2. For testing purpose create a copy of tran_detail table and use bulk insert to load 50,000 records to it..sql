drop table copy_customer;
drop table copy_tran_detail;
drop table cust_copy;
select * from copy_tran_detail;

create table copy_tran_detail 
as select * from tran_detail where 1=2;

describe copy_tran_detail ;

show create table  copy_tran_detail ;
copy_tran_detail	CREATE TABLE `copy_tran_detail` (
   `tnumber` varchar(6) DEFAULT NULL,
   `acnumber` varchar(6) DEFAULT NULL,
   `dot` date DEFAULT NULL,
   `medium_of_transaction` varchar(20) DEFAULT NULL,
   `transaction_type` varchar(20) DEFAULT NULL,
   `transaction_amount` int DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3

ALTER TABLE copy_tran_detail
MODIFY COLUMN tnumber INT  PRIMARY KEY auto_increment;

show create table  copy_tran_detail ;
copy_tran_detail	CREATE TABLE `copy_tran_detail` (
   `tnumber` int NOT NULL AUTO_INCREMENT,
   `acnumber` varchar(6) DEFAULT NULL,
   `dot` date DEFAULT NULL,
   `medium_of_transaction` varchar(20) DEFAULT NULL,
   `transaction_type` varchar(20) DEFAULT NULL,
   `transaction_amount` int DEFAULT NULL,
   PRIMARY KEY (`tnumber`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
VALUES('A00001','2013-01-01','Cheque','Deposit',2000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00001','2013-02-01','Cash','Withdrawal',1000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00002','2013-01-01','Cash','Deposit',2000);
INSERT INTO copy_tran_detail(acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00002','2013-02-01','Cash','Deposit',3000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00007','2013-01-11','Cash','Deposit',7000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00007','2013-01-13','Cash','Deposit',9000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00001','2013-03-13','Cash','Deposit',4000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00001','2013-03-14','Cheque','Deposit',3000);
INSERT INTO copy_tran_detail(tnumber, acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00001','2013-03-21','Cash','Withdrawal',9000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00001','2013-03-22','Cash','Withdrawal',2000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00002','2013-03-25','Cash','Withdrawal',7000);
INSERT INTO copy_tran_detail( acnumber, dot, medium_of_transaction, transaction_type, transaction_amount)
 VALUES('A00007','2013-03-26','Cash','Withdrawal',2000);

0	68	17:19:28	`transaction_amount` int DEFAULT NULL,
	Error Code: 1064. You have an error in your SQL syntax; 
    check the manual that corresponds to your MySQL server version
    for the right syntax to use near
 '`transaction_amount` int DEFAULT NULL,' at line 1	0.000 sec