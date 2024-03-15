# SQL-Practice

 - **assginment day1** 
   
   Q1.&nbsp; Install MySQL<br>
   Q2.&nbsp; Login to MySQL. List different database in MySQL<br>
   Q3.&nbsp; How to connect to specific database<br>
   Q4.&nbsp; List all the tables available in given database<br>
   Q5.&nbsp; Switch from one database to other<br>
   Q6.&nbsp; Run the script "SampleScott_Schema.sql" in your database =just drag the text file of " SampleScott_Schema.sql" put it into workbench then run whole selected statement<br>
   Q7.&nbsp; List the tables that you have in the database now<br>
   Q8.&nbsp; Describe the structure of each table in MySQL<br>
   Q9.&nbsp; Fire command to check current user in database<br>
   Q10.&nbsp; Observe the output of command "select DATE(current_date() +2),current_date();"<br>
   Q11.&nbsp; Observe the command "select null;"  Identify what is null<br>

----------------------------------------
  
- **assignment day2** 
  
  Assumption : We have created Scott schema (database) in MySQL and created following tables using attached script
  EMP
  DEPT
  SALGRADE
  BONUS

  Questions on SELECT Clause
 
  Q1.&nbsp; Display all the records in emp table<br>
  Q2.&nbsp; Display first two column from emp table<br>
  Q3.&nbsp; Display the structure of emp, dept and salgrade table<br>
  Q4.&nbsp; Display unique jobs from employee table<br>
  Q5.&nbsp; Display the output as follows<br>
            SCOTT is earning 800 dollars
            ...
  Q6.&nbsp; Display the output from employee table in following format<br>

   Employee Name  Designation 

   SMITH                 CLERK
   ALLEN                 SALESMAN
  ...
  
   Q7.&nbsp; Display the name of employee and annual salary of each employee. Annual sal must be calculated by considering sal, comm and bonus of 1000$ for each employee<br>
    
   Q8.&nbsp; Display the list of manager's employee number in following format. Ensure that same manager number must not be repeated. Also ensure that NULL must not be displayed in the result (display NA in place of null)<br>
    
    Manager Number
                         
    7902<br>
    7698<br>
    7839<br>
    7566<br>
    
    Q9.&nbsp; Display the employee name, salary and commission and ensure that we consider the commission as 1500 for employees where commission is not paid.<br>
