select * from tran_detail ;
update tran_detail
set medium_of_transaction=upper(medium_of_transaction);
update tran_detail
set transaction_type=upper( transaction_type)
