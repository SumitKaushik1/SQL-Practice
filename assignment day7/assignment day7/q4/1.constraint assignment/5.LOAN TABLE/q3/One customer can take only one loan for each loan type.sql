use banking 
select *
from loan;
ALTER TABLE loan 
ADD PRIMARY KEY (CUSTID,LOAN_TYPE);-- COMPOSITE PRIIMARY KEY
INSERT INTO LOAN (CUSTID,LOAN_TYPE)
VALUES('C00001','HOME');
0	6	17:47:37	INSERT INTO LOAN (CUSTID,LOAN_TYPE)
 VALUES('C00001','HOME')	Error Code: 1062. Duplicate entry 'C00001-HOME'
 for key 'loan.PRIMARY'	0.000 sec