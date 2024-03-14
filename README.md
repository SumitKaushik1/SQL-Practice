# SQL-Practice

 - **assginment day1** 
   
   -  Install MySQL
   -  Login to MySQL. List different database in MySQL
   -  How to connect to specific database
   -  List all the tables available in given database
   -  Switch from one database to other
   -  Run the script "SampleScott_Schema.sql" in your database =just drag the text file of " SampleScott_Schema.sql" put it into workbench then run whole selected statement
   -  List the tables that you have in the database now
   -  Describe the structure of each table in MySQL
   -  Fire command to check current user in database
   -  Observe the output of command "select DATE(current_date() +2),current_date();"
   -  Observe the command "select null;"  Identify what is null

----------------------------------------
  
- **assignment day2** 
  
  Assumption : We have created Scott schema (database) in MySQL and created following tables using attached script
  EMP
  DEPT
  SALGRADE
  BONUS

  Questions on SELECT Clause
 
  -  Display all the records in emp table-
  -  Display first two column from emp table
  -  Display the structure of emp, dept and salgrade table
  -  Display unique jobs from employee table
  -  Display the output as follows 
            SCOTT is earning 800 dollars
            ...
  -  Display the output from employee table in following format

   Employee Name  Designation 

   SMITH                 CLERK
   ALLEN                 SALESMAN
  ...
  
  -  Display the name of employee and annual salary of each employee. Annual sal must be calculated by considering sal, comm and bonus of 1000$ for each employee
  
  -  Display the list of manager's employee number in following format. Ensure that same manager number must not be repeated. Also ensure that NULL must not be displayed in the result (display NA in place of null)
  
  Manager Number
                       
  7902<br>
  7698<br>
  7839<br>
  7566<br>
  
  -  Display the employee name, salary and commission and ensure that we consider the commission as 1500 for employees where commission is not paid. 
