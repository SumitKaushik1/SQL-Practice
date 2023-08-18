describe customer;
alter table customer modify column fname varchar(30) after custid;
describe customer;
select *
from customer;
show create table customer;
delete from customer
where custid in ('4','3');


ALTER TABLE CUSTOMER
add constraint  check(( `fname` <>`l tname` )and (`fname` <>`m name`));

or 

ALTER TABLE customer 
add unique(fname,`l tname`,`m name`);

ALTER TABLE CUSTOMER
ADD constraint   check (`m name` <> `l tname`);

insert into customer(custid,`fname`,`m name`, `l tname`)
values(1,'k','ka','k');
rollback;
21:03:31	select * from customer LIMIT 0, 1000	14 row(s) returned	0.000 sec / 0.000 sec

21:04:23	delete from customer where custid in (1,2,3,4)	Error Code: 1292. Truncated incorrect DOUBLE value: 'C00001'	0.031 sec


customer	CREATE TABLE `customer` (
   `custid` varchar(6) NOT NULL,
   `fname` varchar(30) DEFAULT NULL,
   `m name` varchar(30) DEFAULT NULL,
   `l tname` varchar(30) DEFAULT NULL,
   `city` varchar(15) DEFAULT NULL,
   `mobileno` varchar(10) DEFAULT NULL,
   `occupation` varchar(10) DEFAULT NULL,
   `dob` date DEFAULT NULL,
   UNIQUE KEY `custid` (`custid`),
   CONSTRAINT `customer_chk_1` CHECK ((not((`fname` like _utf8mb3'% %')))),
   CONSTRAINT `customer_chk_2` CHECK (((`fname` <> `l tname`) and (`fname` <> `m name`)))
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
 
 ALTER TABLE customer
 DROP  CONSTRAINT `customer_chk_2`
 
DELETE FROM CUSTOMER 
WHERE CUSTID IN ('1','2','3','4');

COMMIT;

      