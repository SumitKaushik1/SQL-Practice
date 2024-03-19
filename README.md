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


----------------------------------------


- **Assignment day5**
  
  - Assignment
  
    ![Screenshot (320265)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/202ecadf-60fc-4cd3-b417-4dc0007d2c0b)
    ![Screenshot (320266)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/09d9c1f8-67e1-496e-8298-8aa46f32a9d1)
    ![Screenshot (320267)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/c8614c5a-5902-4256-8bba-bb6a3b43224e)
    ![Screenshot (320268)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/25a9ecc9-fec3-4156-b246-44c9b754eb05)


- assignment day5

   ![Screenshot (320269)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/a701136c-4dd9-42cb-9028-2d6f7c32a404)
   ![Screenshot (320270)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/39c080b7-6710-46b9-ab01-7194ce754424)
   ![Screenshot (320271)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/27d79f88-2d98-4939-9d25-707efd4895bb)
   ![Screenshot (320272)](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/47836312-4c97-4a02-bfad-b602c9917db3)


----------------------------------------


- **Assignment day6**

  - ASSIGNMENT DAY 6
    
      - original 1
        
         - Prepare the DDL commands by looking at the diagram car_booking.png
   
         ![1_Car_Booking](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/1c12ea22-2f68-47ae-a820-2f5ee44ecf98)


      - original 2

        ![2_Simple_SupplyChain_DataModel](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/c9d6ed2c-ef58-4dc8-9565-2970b619abaf)
        
        Q1.&nbsp;Create a copy of customer table and name it as customer_bak.<br>
        Q2.&nbsp;. Add not null constraint to customer name column in customer table<br>
        Q3.&nbsp;Add check constraint on credit_limit column on customer table 
           (credit_limit < 20000)<br>
        Q4.&nbsp; Change the datatype of Addess column in Customer table to "Text"<br>
        Q5.&nbsp; Drop foreign key constraint from Order table (pointing to customer table)<br>
        Q6.&nbsp; Add foreign key constraint from Order table to cust_copy table<br>
        Q7.&nbsp; Change the name of "Color" column in product table to "Colour"<br>
        Q8.&nbsp; Add a column parent_product_id to Product table<br>
        Q9.&nbsp; Add foreign key constraint to parent_product_id column which refers to Product.PID column<br>
        
    ----------------------------------------
    
    
    - **assignment day7**
    
       ![BankSchema](https://github.com/SumitKaushik1/SQL-Practice/assets/110432346/17e4b5cb-2694-4278-95ea-3ddb6f808ed0)

       - Constraints_Assignment
    
          Introduce following constraint on tables in Bank schema.

            Customer table
            1. Customer id in customer table must be unique and does not allow null values
            2. Column fname must not allow space in it
            3. First name, middle name and last name must not be same
            4. Age of customer (based on date of birth) must be more then 10 years old.
            
            Branch Table
            1. Branch name must not be null
            2. Branch id must be unique and not null
            
            Account Table
            1. Account number for each record must be unique
            2. Customer Id must be of valid customer and must not be left as blank
            3. opening balance must be more then 10000
            4. Acount opening date must not be of past dates
            5. Branch id (bid) must be of valid branch 
            
            Tran_detail Table
            
            1. Transaction number must be unique for each transaction
            2. Account number must refer to valid account
            
            Loan Table
            
            1. Customer Id must be of valid customer and must not be left as blank
            2. Branch id (bid) must be of valid branch 
            3. One customer can take only one loan for each loan type


       - DML_Assignment
            
            1. Update all Branch_id where referred as BR in place of B
        eg: B00001 will become BR_00001
            2. For testing purpose create a copy of tran_detail table and use bulk insert to load 50,000 records to it. Please make necessary arrangement to generate new TRAN_ID for each record
            3. Update Transaction type and medium of transaction values to upper case for all records of transaction table.
            4. Update phone number and base location of customer Abhishek (C00009) to 8976523191 and Pune
            5. Add a new column customer_cnt to Branch table and update it's value based on count of customer that branch has.
            6. Create a new table account_bak and copy all records of account table to account_bak
            7. Update the account status as Inavtive for account of customer 'Amit Kumar Borkar'
            8. Add a new transaction to account for all loan account customers as one time charge of 1000 Rs for current month.
            9. Add Index on tnumber column on copy of tran_detail table and observe execution plan of following queries
	
             	- select count(tnumber) from  tran_detail_copy;
             	
             	- select * from tran_details_copy 
             	  where dot > '2021-02-01';
             	  
             	- select * from tran_detail_copy
             	  order by tnumber;
                
       ----------------------------------------
    
    
    - **assignment day10**          	  
	
		Q1.&nbsp;Write a PL/SQL program to arrange the number of two variable in such a way that the small number will store in num_small variable and large number will store in num_large variable.<br>
		Q2.&nbsp;Write a PL/SQL program to check whether a number is even or odd<br>
		Q3.&nbsp;Write a PL/SQL procedure to calculate the total salary for specific employee.<br>
		Q4.&nbsp;Write a PL/SQL program to check whether a date falls on weekend i.e. SATURDAY or SUNDAY.<br>
		Q5.&nbsp;Write a PL/SQL program to count number of employees in provided department.<br>
		Q6.&nbsp;Write a PL/SQL program to display the description against a grade.<br>
		Q7.&nbsp;Write a PL/SQL program to count number of employees in a specific department and check whether this department have any vacancies or not (considering that each department has 45 head count requirement). If any vacancies, how many vacancies are in that department.<br>
		Q8.&nbsp;Write a PL/SQL program to display the description against a grade using CASE statement.<br>
		Q9.&nbsp;Write a PL/SQL program to check whether a given number is positive, negative or zero.<br>
		Q10.&nbsp;Write a PL/SQL program to check whether a given character is letter or digit.<br>
		Q11.&nbsp;Write a PL/SQL program to display which day is a specific date.<br>
		Q12.&nbsp;Write a program in PL/SQL to update the salary of a specifc employee by 8% if the salary exceeds the avg salary of their job.<br>
		Q13.&nbsp;Write a program in PL/SQL to print 1st n numbers from provided input. 
		  input : start with, end with, top n<br>
	Q14.&nbsp;Write a program in PL/SQL to print the prime numbers between 1 to 50.<br>

            
            
