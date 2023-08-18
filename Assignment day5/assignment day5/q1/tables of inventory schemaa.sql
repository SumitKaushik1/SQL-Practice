use inventory;
show tables;
SELECT *
from supplier;

delete from  supplier
where s_no=2001;

show variables like '%autocommit%';
set autocommit=off;

INSERT INTO supplier( s_no,sname,status,city)
VALUE(2001,'Peel',14,'London');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2002,'Serres',16,'San Jose');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2003,'Motika',22,'London');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2004,'Rifkin',21,'Barcelona');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2005,'Axelrod',10,'New York');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2006,'Pierson',8,'Lisbon');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2007,'Smith',14,'Barcelona');
INSERT INTO supplier( s_no,sname,status,city)
VALUE(2008,'Aston',34,'Sanjose');

commit;

SELECT *
from parts;

describe parts;

INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3001,2008,'Nut','RedColor',18.69,1007);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3003,2001,'Bolt','2.5inch',767.19,1001);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3002,2007,'Screw','1.5inch',1900.10,1004);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3005,2003,'Cam','2mm',5160.45,1002);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3006,2008,'Cog','12mm',1098.16,1007);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3009,2002,'Spanner','Point7',1713.23,1003);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3007,2004,'Nut','1.5inch',75.75,1002);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3008,2006,'Nut','1.8inch',4723.00,1001);
INSERT INTO parts( p_no,suppid,partname,partdesc,partweight,price)
VALUE(3010,2004,'Scew','12inch',1309.95,1002);

commit;
select *
from supplierpart;

delete from supplierpart;

INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2001,3001,200);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2001,3003,400);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2002,3003,200);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2002,3009,100);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2003,3003,200);--
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2003,3006,500);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2004,3010,500);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3002,200);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3009,100);--
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3010,200);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3001,100);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3003,200);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3006,800);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3009,400);
INSERT INTO supplierpart( s_no,p_no,quantity)
VALUE(2005,3010,500);

rollback;
show variables like '%autocommit%';
set autocommit=off;