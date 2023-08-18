use banking ;

select * from branch;

SELECT * FROM ACCOUNT ;

SELECT * FROM LOAN ;

SHOW VARIABLES LIKE '%AUTOCOMMIT%';
SET AUTOCOMMIT=OFF;

commit;










COMMIT;


alter table account 
 drop  index bid;

 ALTER TABLE ACCOUNT 
 ADD FOREIGN KEY(bid) REFERENCES BRANCH (BID) ON UPDATE CASCADE;
 ALTER TABLE BRANCH
 MODIFY COLUMN BID VARCHAR(10) PRIMARY KEY ;
 ALTER TABLE ACCOUNT 
 MODIFY COLUMN BID VARCHAR(10)  ;
 ALTER TABLE LOAN
 MODIFY COLUMN BID VARCHAR(10) ;
 ALTER TABLE ACCOUNT 
 ADD FOREIGN KEY(bid) REFERENCES BRANCH (BID) ON UPDATE CASCADE;
 ALTER TABLE ACCOUNT
 DROP CONSTRAINT account_chk_3 ;-- ie previous foreign key drop it 
 -- related to bid 
 ALTER TABLE loan 
 ADD FOREIGN KEY(bid) REFERENCES BRANCH (BID) ON UPDATE CASCADE;
 ALTER TABLE loan 
 DROP CONSTRAINT account_chk_3 ;-- ie first we add anotehr foreign key 
 -- related to that then we drop  previous foreign key 
 update branch 
SET  bid='BR_00001' WHERE bid='B00001';

update branch 
SET  bid='BR_00002' WHERE bid='B00002';

UPDATE BRANCH 
set bid ='BR_00003' WHERE bid='B00003';


UPDATE BRANCH 
set bid ='BR_00004' WHERE bid='B00004';


UPDATE BRANCH 
set bid ='BR_00005' WHERE bid='B00005';


UPDATE BRANCH 
set bid ='BR_00006' WHERE bid='B00006';


UPDATE BRANCH 
set bid ='BR_00007' WHERE bid='B00007';


UPDATE BRANCH 
set bid ='BR_00008' WHERE bid='B00008';


UPDATE BRANCH 
set bid ='BR_00009' WHERE bid='B00009';
 -- UPDATE CASCADE: When we create a foreign key 
 -- using UPDATE CASCADE the referencing rows are 
 -- updated in the child table when the referenced 
 -- row is updated in the parent table which has a 
 -- primary key.03-Jul-2019
ALTER TABLE BRANCH 
 DROP index `bid` ;-- drop unique key
 ;

 
