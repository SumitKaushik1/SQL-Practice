2. Customer Id must be of valid customer and must not be left as blank

ALTER TABLE account 
ADD CONSTRAINT FOREIGN KEY (custid) REFERENCES customer(custid);

ALTER TABLE account 
MODIFY COLUMN CUSTID VARCHAR(6) NOT NULL;

INSERT INTO ACCOUNT(ACNUMBER,CUSTID)
VALUES( 1,' ')

ROLLBACK;

DELETE FROM ACCOUNT
WHERE ACNUMBER='1';

select * from account;
SHOW VARIABLES LIKE '%AUTOCOMMIT%'

SET AUTOCOMMIT=OFF
select * from customer;

DESC ACCOUNT