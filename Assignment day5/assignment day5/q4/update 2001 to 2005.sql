select *
from supplierpart;

rollback;


update supplierpart
 set s_no = 2005 where s_no=2001;
 
