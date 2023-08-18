use banking;
 select * from copy_tran_detail;
 
create index i_tnumberer
on copy_tran_detail(tnumber);



select count(tnumber) from copy_tran_detail;

select * from copy_tran_detail 
	  where dot > '2021-02-01';
      
select * from  copy_tran_detail 
	  order by tnumber;
	  