use day6;
show tables;
show create table booking_status;
 CREATE TABLE booking_status (
  book_status_code varchar(10) PRIMARY KEY,
  book_status_desc varchar(100) 
) ;
describe booking_status;
ALTER TABLE BOOKING_STATUS
ADD COLUMN book_status_code VARCHAR(10) PRIMARY KEY;
DROP COLUMN book_status_code ;

CREATE TABLE manf (
  manf_code int PRIMARY KEY,
  manf_name varchar(100),
  manf_detail varchar(200) 
  
) ;

SHOW CREATE TABLE VECH_CATEG;

 CREATE TABLE vech_categ (
  vc_code int   PRIMARY KEY,
  vc_int varchar(200) 

) ;
SHOW TABLES;

SHOW DATABASES;
USE DAY6;


CREATE TABLE customer 
(   cust_id INT PRIMARY KEY,
    cust_name VARCHAR(200),
    cust_detail VARCHAR(200),
    gender CHAR(1),
    email VARCHAR(50),
    phone VARCHAR(50),
	addr_line1 VARCHAR(50),
    addr_line2 VARCHAR(50),
    addr_line3 VARCHAR(50),
    town VARCHAR(50),
    county VARCHAR(50),
    country VARCHAR(50)
 );
 
 DROP TABLE CUSTOMER;
 
 CREATE TABLE model
 ( model_code VARCHAR(10) PRIMARY KEY,   -- primary key means uniwue canot be null 
    daily_hire_rate INT, -- a foreign key can only be formed from primary key
    model_name VARCHAR(10),
    manf_code INT ,
    FOREIGN KEY(manf_code) REFERENCES  manf(manf_code)
    ,-- foreign key means it is validating from the amnf table that it valid manf_ code o not
    -- foriegn key can be put as null and by deffault come null if not any value put
 );
 
 describe model;
 show  create table model;
 
 -- MUL = means multiple ocuurrancece or foreign key 
  
  CREATE TABLE vechicle
  ( reg_numer VARCHAR(10) PRIMARY KEY,
  mileage INT,
  daily_hire_date INT,
  date_mot_due DATE,
  engine_size INT,
  vc_code INT ,
  model_code VARCHAR(10),
  FOREIGN KEY(vc_code) REFERENCES vech_categ(vc_code),
  FOREIGN KEY(model_code) REFERENCES model(model_code)
  );
  
  
  
  CREATE TABLE booking
  (booking_id INT PRIMARY KEY,
  date_from DATE,-- DATE IS THE DATATYPE FOR ACCEPTING ACTUAL DATE 
   date_to DATE,
   confir_stat CHAR(1),
   pay_sat CHAR(1),
   cust_id INT,
   book_status_code VARCHAR(10),
   reg_numer VARCHAR(10),
   FOREIGN KEY(reg_numer) REFERENCES vechicle(reg_numer),
   FOREIGN KEY(cust_id) REFERENCES customer(cust_id),
  FOREIGN KEY(book_status_code) REFERENCES  booking_status(book_status_code)
   
 );
 Error Code: 1822. Failed to add the foreign key constraint. 
 Missing index for constraint 'booking_ibfk_3' in the referenced table
 'booking_status'
show tables;
21:39:15	CREATE TABLE booking   (booking_id INT PRIMARY KEY,   date_from DATE,-- DATE IS THE DATATYPE FOR ACCEPTING ACTUAL DATE     date_to DATE,    confir_stat CHAR(1),    pay_sat CHAR(1),    cust_id INT,    book_status_code VARCHAR(10),    reg_numer VARCHAR(10),    FOREIGN KEY(reg_numer) REFERENCES vechicle(reg_numer),    FOREIGN KEY(cust_id) REFERENCES customer(cust_id),   FOREIGN KEY(book_status_code) REFERENCES  booking_status(book_status_code)      )	Error Code: 1822. Failed to add the foreign key constraint. Missing index for constraint 'booking_ibfk_3' in the referenced table 'booking_status'	0.000 sec
