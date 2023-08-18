use banking ;
show tables;
select b.bid ,count(*)
from branch b join account a using(bid)
group by b.bid ;
ALTER TABLE branch
ADD COLUMN customer_cnt int ;
select  * from branch ;

create temporary table bb
as select * from branch ;
drop table bb;
select * from bb;

update bb 
set customer_cnt =10;-- static all customer_cnt become 10..10..10
-- each record is given 10 one by one

update bb-- it is giving error b/z is giving multiple  value at same time 
set customer_cnt =(select count(*)
                   from branch b join account a using(bid)
                   group by b.bid ) ;
                   
update   bb b
set customer_cnt =(select count(*)
                     from account as a
                     where a.bid =b.bid -- a.b0001 is equal to b.b0001
					 ); -- then count happen for a.b0001 in account table
                      -- come as 3 first record  store in customer_ cnt as record 
                     

                     