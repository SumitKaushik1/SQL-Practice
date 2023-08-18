1. Transaction number must be unique for each transaction
select * from tran_detail ;
ALTER TABLE tran_detail 
MODIFY  COLUMN tnumber VARCHAR(6) UNIQUE;
show create table tran_detail 
tran_detail	CREATE TABLE `tran_detail` (
   `tnumber` varchar(6) DEFAULT NULL,
   `acnumber` varchar(6) DEFAULT NULL,
   `dot` date DEFAULT NULL,
   `medium_of_transaction` varchar(20) DEFAULT NULL,
   `transaction_type` varchar(20) DEFAULT NULL,
   `transaction_amount` int DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3