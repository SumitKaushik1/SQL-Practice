2.) Write a query in SQL to display the first and last name, department, city, and state province for each employee
select *
from employees;
select *
from departments ;
select *
from LOCATIONS;
 select database();
 use inventory;
 
 SELECT FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE
from departments JOIN employees using(department_id)
                 join locations  using(location_id);
             

SELECT FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE
from employees JOIN ( departments join locations using(location_id)) using(department_id);

-- or
SELECT FIRST_NAME ,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE
from (employees JOIN departments using(department_id)) join locations using(location_id);
 -- or          
