show databases;
use banking;
show tables;
describe customer;
ALTER TABLE customer
MODIFY COLUMN  custid varchar(6) UNIQUE NOT NULL;