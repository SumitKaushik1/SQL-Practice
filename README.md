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
            ...<br><br>
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


----------------------------------------

- **assignment day3** 

  - Order By
    
    Q1.&nbsp; Display emp table with salary descending order?<br>
    Q2.&nbsp; Display all the records in emp table order by ascending deptno, descending salary?<br>
    Q3.&nbsp;  Display all employees in same order as they joined the company<br>
    Q4.&nbsp;  Display who is making highest commission?<br>
    
  - Miscellaneous
    
    Q1.&nbsp;  Display all employees those who were joined in third quarter of 1981?<br>
    Q2.&nbsp;  Display distinct job from emp table?<br>
    Q3.&nbsp;  Display all the records in emp table where employee hired after 28-SEP-81 and before 03-DEC-81?<br>
    Q4.&nbsp; Write a query that displays the employees whose names has letter 'T'<br>
    Q5.&nbsp;  Display the empno, ename, sal, and salary increased by 15%.<br>
    Q6.&nbsp;  Display all employees where ename start with J and ends with S<br>
    Q7.&nbsp;  Display all employees where jobs does not belong to PRESIDENT and MANAGER?<br>
    Q8.&nbsp;   Display all three figures salary in emp table<br>
    Q9.&nbsp;  Display all ename where first character could be anything, but second character should be L?<br>
    
   - GROUP BY AND GROUP FUNCTIONS
    
    
     Q1.&nbsp;  Display the maximum salary in the emp table<br>
     Q2.&nbsp;  Display average salary for job SALESMAN<br>
     Q3.&nbsp;  Display sum of salary for each department.<br>
     Q4.&nbsp;  Display all department with Minimum salary and maximum salary?<br>
     Q5.&nbsp;  Display all the departments where we have more then 3 employees<br>
     Q6.&nbsp;  Display count of employees working as SALESMAN<br>
     Q7.&nbsp;  Display count of employees who has joined in year 1981<br>
