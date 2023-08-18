select *
from supplier;
DELETE from supplier
WHERE s_no=2001;

update  supp_par_clone 
set s_no = 2005 where s_no=2001;

create table supp_par_clone
as select * supplierpart;
update 