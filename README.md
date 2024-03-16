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

 
----------------------------------------


- **Assignment day4**
  
   - HR Data Model
 
    
     Q1.&nbsp; Write a query in SQL to display the first name, last name, department number, and department name for each employee.<br>
     Q2.&nbsp; Write a query in SQL to display the first and last name, department, city, and state province for each employee<br>

   - Joins
 
     
      Q1.&nbsp; Display all records in EMP table those were joined before SCOTT joined?<br>
      Q2.&nbsp; Display details of department where department has 3 employees?<br>
      Q3.&nbsp; Display details of department with Minimum salary and maximum salary?<br>
      Q4.&nbsp; Display all ename, sal, deptno,dname from emp, dept table where all department which has employees as well as department does not have any employees. This query should include non matching rows.<br>
      Q5.&nbsp; Display all ename, sal, deptno from emp, dept table where all employees which has matching department as well as employee does not have any departments. This query should include non matching rows.<br>
      Q6.&nbsp; Display all ename, sal, dname. Result must include all employees as well as all departments. This query should include non matching rows on both the tables.<br>
      Q7.&nbsp; Display all ename, empno, dname from emp, dept table without joining two tables<br>
      Q8.&nbsp; Display all the departments where department does not have any employees== according to deptno we have to join two table then it we can  show the particaular depatment<br>
      Q9.&nbsp;Display all the departments where department does have atleast one employee<br>
      Q10.&nbsp; Display all employees those who are not managers?<br>
      Q11.&nbsp; Display all the records for deptno which belongs to employee name JAMES?== two table  show old sytax join<br>
      Q12.&nbsp; Display all the records in emp table where salary should be less then or equal to ADAMS salary?<br>
      Q13.&nbsp;Display ename, sal, grade, dname, loc for each employee.<br>
      Q14.&nbsp; Display all employee whose location is DALLAS?<br>

  - nested query or subquery
 
    
    Q1.&nbsp; Display all employees where their salary is less then the Ford’s salary?== subquery fords salary need ,  find, query overall<br>
    Q2.&nbsp; Display all records in EMP table those were joined before SCOTT joined?=== subquery = find scott hire date, then see  oeverll query<br>
    Q3.&nbsp; Display department details with Minimum salary and maximum salary of that department?<br>
    Q4.&nbsp; Display all the departments where department does have atleast one employee<br>
    Q5.&nbsp; Display all employees those who are not managers?<br>
    Q6.&nbsp; Display all the records for deptno which belongs to employee name JAMES?  first fin detaile in emp table and then  in dept tabel   for this dept table subquery depno no.in emp table b/ z deptno is common in both table<br>
    Q7.&nbsp; Display all the records in emp table where salary should be less then or equal to ADAMS salary?== subquery= adams salary<br>
    Q9.&nbsp; Display all subordinate those who are working under BLAKE?subquery black empno<br>
    Q10.&nbsp; Display all record in emp table working in same deptno as of KING?SUBQUERY IS KIng deptno<br>
    Q11.&nbsp; Display all employee whose location is DALLAS?-- subquery deptno in dept table  b/ zit is common inboth table<br>
    Q12.&nbsp; List ename, job, sal and department of all employees whose salary is not within the salary grade?<br>


     
