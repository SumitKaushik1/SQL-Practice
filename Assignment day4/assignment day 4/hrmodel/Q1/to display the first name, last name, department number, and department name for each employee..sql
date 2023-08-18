select  database();
show tables;
1.) Write a query in SQL to display the first name, last name, department number, and department name for each employee.
select *
from employees;
select *
from departments ;

SELECT first_name,last_name,department_id ,department_name 
from employees NATURAL JOIN departments ;

