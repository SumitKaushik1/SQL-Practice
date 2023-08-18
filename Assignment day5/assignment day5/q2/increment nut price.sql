show tables;
select *
from parts;

update parts 
set price =(price +5) 
where partname='nut';