 ALTER TABLE Customer
 MODIFY  credit_limit INT CHECK(Credit_limit<20000) ;