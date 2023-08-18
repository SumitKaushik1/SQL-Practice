use day6;
show tables;
show create table booking_status;
 CREATE TABLE booking_status (
  book_status_code varchar(10) PRIMARY KEY,
  book_status_desc varchar(100) 
) ;

SHOW CREATE TABLE MANF;

CREATE TABLE manf (
  manf_code int PRIMARY KEY,
  manf_name varchar(100),
  manf_detail varchar(200) 
  
) ;

SHOW CREATE TABLE VECH_CATEG;

 CREATE TABLE vech_categ (
  vc_code int   PRIMARY KEY,
  vc_int varchar(200) 

) 
SHOW TABLES;
