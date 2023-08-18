select * from account ;

select * from copy_customer
use banking
update account
set astatus='Inavtive' where custid in
 (
select custid from copy_customer
 where (`fname`='amit' and`m name`='kumar')and `l tname`='borkar'
);

select custid from copy_customer
 where (`fname`='amit' and`m name`='kumar')and `l tname`='borkar'