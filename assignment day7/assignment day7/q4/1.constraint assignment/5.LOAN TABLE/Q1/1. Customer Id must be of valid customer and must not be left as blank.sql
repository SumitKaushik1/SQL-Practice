select * from account;

ALTER TABLE loan
ADD FOREIGN KEY(custid) REFERENCES  customer(custid) ;
ALTER TABLE loan
MODIFY custid VARCHAR(6) NOT NULL;

ALTER TABLE LOAN
DROP CONSTRAINT`loan_ibfk_2`
SHOW CREATE TABLE LOAN;
