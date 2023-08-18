ALTER TABLE tran_detail
ADD FOREIGN KEY(acnumber) REFERENCES account (acnumber);

insert into tran_detail(tnumber,acnumber)
values('1','1')