 ----------
 -- PART 1
 ----------
 /* -- Create a table
  CREATE TABLE students(
      Id SERIAL PRIMARY KEY,
	  name VARCHAR(100) NOT NULL,
	  age INTEGER NOT N
  )*/


  /*-- slect all data 
  SELECT * FROM students;

  --select only email from data
  SELECT email  from students;


  --select only name and age 
  SELECT name as "Name" ,age  as "Age" FROM students;
*/ 

 --------------------------
 -- PART 2- Data Types
 --------------------------

 
 /*

  1) Integer-> for whole number
  2) BIGINT -> bahut bade intiger value ke liye for population
  3) DECIMAL/NUMERIC -> money/Prices values ke liye 
  4) VARCHAR -> for string or character
  5) TEXT ->  long variable text ke liye 
  6) BOOLEAN -> to check true or false
  7) DATE -> or date 
  8) TIMESTAMP -> Date + Time important for backend application
  9) UUID -> morden application me unique id ke liye 
  
 
 */

 
--------------------------
 -- PART 3- Constraints
 --------------------------

/*

 constraints -> apply rules on database

 1) PRIMARY KEY ->  Unique key, Not null, only one primery key present in a single  table

 2) SERIAL + PRIMARY KEY -> auto numbering machanism , When we mention serial then we dont mention integer.

 3) NOT NULL -> means that column would not be empty

 4) UNIQUE -> avoide the duplicate value, one item will insert only once at a time, its allow NOT NULL COnstraints this is besic 
                def b/w unique key or primary key
                    
 
 5) CHECK -> for apply condition eg-> age INTIGER CHECK (age>=18).

 6) DEFAULT -> if user not give value then datatbase use default value in that case.

 7)FOREIGN KEY -> it establish relationship between tables, one table's primary key act as foreign key of another tables, thus table connected
 

*/

/*-- Create second Table as student_details 
CREATE TABLE student_details(
    id  SERIAL PRIMARY KEY,
    branch VARCHAR(50) NOT NULL,
	semester VARCHAR(10) NOT NULL,
	roll_num  TEXT NOT NULL UNIQUE ,
	scholership INTEGER CHECK(scholership>=10000),
	is_active BOOLEAN DEFAULT TRUE,
	addmition_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);*/



/*-- NOw insert the value int the table
INSERT INTO student_details(branch,semester,roll_num,scholership,is_active) VALUES
 ('Computer Science and Engineering','7th','23060104200028',58000,True),
 ('Information Technology','7th','23060104200409',58000,True),
 ('Machanical Engineering ','8th','2306010420087428',58050,True)

 */

-- -- select table
-- SELECT * FROM student_details;

-- -- Now add the one extra column in the student table
-- ALTER TABLE students ADD COLUMN course_id INT;


-- -- Insert values into Student table Course Details
-- UPDATE students SET course_id=1 WHERE id=1;
-- UPDATE students SET course_id=2 WHERE id=2;
-- UPDATE students SET course_id=3 WHERE id=3;

-- -- Set course_id as Foreign Keys
-- ALTER TABLE students
-- ADD CONSTRAINT fk_student_course
-- FOREIGN KEY (course_id)
-- REFERENCES student_details(id)

-- DELETE Foreign key
-- ALTER table students
-- DROP CONSTRAINT fk_student_course





--------------------------
 -- CLASS 3- CRUD
 --------------------------

/*

 1) INSERT -> insert data into tables eg_ INSERT INTO student_details(branch,semester,roll_num,scholership,is_active) VALUES
                                           ('Computer Science and Engineering','7th','23060104200028',58000,True)


 2) SELECT -> to fetch data from tables eg_  SELECT name, salary from employees;

 3) WHERE -> for use to aplly condition or fetch exact location SELECT * FROM employees WHERE department='IT';

 4) COMPARISION OPRATOR-> =, !=, >, <, >=, <=, 

 5) AND -> This is and logical oprator

 6) OR -> Thisi is OR LOGICAL OPRATOR

 7) NOT -> use to Reverse of condition

 8) IN ->  for Multiple Values  instead of -> where department ='it' or depa... use where department in ('it',..)

 9) BETWEEN -> to use for range [SELECT * FROM employees WHERE salary BETWEEN 8000 AND 16000; ]

 10) ORDER BY - use for sorting [SELECT * FROM employees ORDER BY salary ASC/DESC;]

 11) LIMIT -> how many records have to find [SELECT * FROM emplloyee LIMIT 3;]

 12) OFFSET -> to skip the Record [ SELECT * FROM employee OFFSET 3] skip first  3 records

 13) NUll - > missing value

 14) LIKE -> use for serch [SELECT * FROM employee WHERE name LIKE 'Pr%'] means it returns all data which have 'Pr'

 15) ILIKE -> usser for case sensitive search [SELECT * FROM employee WHERE name ILIKE '%rahul';]

 16) UPDATE -> update any row data [UPDATE students SET course_id=2 WHERE id=2;]

 17) RENAME -> to change attribute or tablename
               a) Change Column name : ALTER TABLE students RENAME COLUMN email TO student_id;
			   b) change table name : ALTER TABLE students RENAME TO student_info;
			   c) Change the database : first disconnect that database then execute ALTER DATABASE old_db RENAME TO new_db;


 17) DELETE -> to DELETE Clumn,row ,table or database or table
               a) Delete a row : DELETE FROM student WHERE id=1;
			   b) Delete all row : TRUNCATE TABLE students; -- Fast 
			                       DELETE FROM students     --slow
								   
               c) Delete column -> ALTER TABLE students DROP COLUMN age;
			   d) Delete Table -> DROP TABLE students;
			   e) Delete Databse -> DROP DATABSE my_db;


 18) ADD -> add extra column in table [ALTER TABLE students ADD COLUMN phone VARCHAR(10);]

*/
--------------------------
-- Practice Session
--------------------------

-- -- Create Table
-- CREATE TABLE employee(
--     id SERIAL PRIMARY KEY,
-- 	name VARCHAR(20) NOT NULL,
-- 	ages INT ,
-- 	departments VARCHAR(50)
-- )

-- --Insert values into table 
-- INSERT INTO employee(name,ages,departments) VALUES
-- ('Priyanshu Tiwari',22,'Backend Engineering'),
-- ('Aman Tiwari',20,'Frontend Enginnering'),
-- ('Piyush Pandey',19,'Fullstack Engineering'),
-- ('Manvendra Singh',22,'Java Devlopent'),
-- ('Suman Singh',25,'Data Science')


-- --Task 1 -> fetch all data
-- SELECT * FROM employee

-- --Task 2 -> fetch only name, department
-- SELECT name as "Name" , departments as "Department" FROM employee

-- --Task 3 -> Only Full stack Engineering
-- SELECT name FROM employee WHERE departments='Fullstack Engineering'

-- -- Task 4 -> select age >20 persons
-- SELECT * FROM employee WHERE  ages>=20;

-- -- Task 5 -> employee inside age 20 and 24 
-- SELECT * FROM employee WHERE ages BETWEEN 20 and 24; 

-- -- Task 6 -> Highest Age Three Employees 
-- SELECT * FROM employee ORDER By ages DESC LIMIT 3;

-- -- Task 7 -> Lowes Age Three Employee 
-- SELECT * FROM employee ORDER BY ages ASC LIMIT 3;

-- -- Task 8 -> add one extra column
-- ALTER TABLE employee ADD COLUMN salary INT;

-- -- Task 9 -> Update the all value of salary columns 
-- UPDATE employee SET salary=150000 WHERE id=1;
-- UPDATE employee SET salary=110000 WHERE id=2;
-- UPDATE employee SET salary=10000 WHERE id=3;
-- UPDATE employee SET salary=20000 WHERE id=4;
-- UPDATE employee SET salary=50000 WHERE id=5;


-- -- Task 10 -> Update Piyush Salary
-- UPDATE employee SET salary=40000 WHERE id=3;

-- -- Task 11 -> Delete any one employee data 
-- DELETE FROM employee WHERE ID =5;
--set the sequence
--select setval('employee_id_seq',4)

-- -- Task 12 -> Serch employee which name strt from a 
-- SELECT * FROM employee WHERE name  LIKE 'P%'

-- Task 13 -> Pagination

              -- -- add some new data
              -- INSERT INTO employee(name,ages,departments,salary) VALUES
              -- ('Divya',23,'Backend Engineering',18000),
              -- ('Neetu Tiwari',25,'Backend Enginnering',23000),
              -- ('Prityush Pandey',21,'Deops Engineering',44000),
              -- ('Jeetesh Singh',22,'Java Devlopent',95000),
              -- ('Shriram Singh',27,'Backend Devlopent',35000),
              -- ('Kamal Pandey',41,'Frontend',65000),
              -- ('Ram Narayan',20,'Deops Engineer',65000)
              
              -- Select Page One 
			  --SELECT *  FROM employee ORDER BY ID ASC LIMIT 5

			  -- Select Page Second 
			  --SELECT * FROM employee ORDER BY  ID ASC OFFSET 5 LIMIT 5 ;

			  -- Select Third Second 
			  --SELECT * FROM employee ORDER BY  ID ASC OFFSET 10 LIMIT 5 ;


----------------------------------
-- Aggrigate Function
----------------------------------
/*
 Aggrigate function -> it is method to find one calculated result from muliple rows

 1) COUNT() -> its count total records from tables [SELECT  COUNT(*) FROm employees;]

 2) SUM() -> find sum of all employee's salary [SELECT SUM(salary) as "Toal_salary" FROM employee]

 3) AVG() -> find avg value of a  column [SELECT AVG(salary) as "Avg_salary" FROM employee]

 4) MIN() -> Find The minimm data from the table [SELECT MIN(salary) as "Min_Salary" FROM employee] 

 5) MAX -> Find Largest value From THe table [SELECT MAX(salary) as "Highest_salary" FROM employee]

 6) MUTILPLE Aggrigate Function together
                 SELECT 
				     COUNT(*) AS "total-employee",
					 SUM(salary) as "Toal_salary",
					 AVG(salary) as "Avg_salary", 
					 MIN(salary) as "Min_Salary",
					 MAX(salary) as "Highest_salary"
				 FROM employee;


  *) DISTINCT -> to select only data once means remoove not repeat duplicate data
  
                 SELECT 
				      DISTINCT branch
				 FROM student_details


  7) GROUP BY -> It is grouping same value 'rows and count'  base on  property[Attribute/column name] 
                  Softwere Engineer  = 3
				  Backend ENgineer = 5
				  Frontend ENgineer = 7
				  ..
				  ..



   8) MULTIPLE aggregate + GROPU BY -> 
   
                            SELECT
							         departments,
									 COUNT(*) AS "total-employee",
					                 SUM(salary) as "Toal_salary",
					                 AVG(salary) as "Avg_salary" ,
					                 MIN(salary) as "Min_Salary",
					                 MAX(salary) as "Highest_salary"
				            FROM employee
							GROUP BY departments;




	9) WHERE + GROUP BY -> 

	                      SELECT 
						         departments,
								 AVG(salary) as "average_slary"
						  FROM employee
						  WHERE departments = 'Backend Engineering'
						  GROUP BY departments;



	10) GROUP BY + ORDER BY -> 

		                  SELECT 
						         departments,
								 AVG(salary) AS "avg_Salary"
						  FROM employee
						  GROUP BY departments
						  ORDER BY avg_salary DESC;


	11) SELECT HIGHEST SALARY PERSONS DATA  FROM TABLE-> 

	                      SELECT * FROM employee
						  WHERE salary = (SELECT MAX(salary) FROM employee) 



    12) SELECT HIGHEST SALARY FROM ONE DEPARTMENT -> 

				          SELECT * FROM employee
                          WHERE salary=(SElECT MAX(salary) FROM (SELECT * FROM employee WHERE departments ='Java Development') );



	13) HAVING -> havinf filter the groups  like (show only that department which have more than 2 employe)

						   SELECT 
							       departments,
								   COUNT(*) as "total_employee"
						    FROM employee
							GROUP BY departments 
							HAVING COUNT(*) >2;



	14) WHERE vs HAVING -> 


	                        -------------
							-- WHERE    -> IT FIlter individual
							-------------
				            SELECT 
							       *
							FROM employee
							WHERE salary >50000;

							-------------
							-- HAVING    -> IT FIlter By Group wise not individual
							-------------
				            SELECT 
							       departments,AVG(salary) as "avarage_salary"
							FROM employee
							GROUP BY departments
							HAVING avarage_salary >50000;





	15) WHERE + GROUP + HAVING -> Find that branch which have more than 2 of count of active_student

							SELECT  
						             branch,
							         COUNT(*)  
							FROM student_details 
							WHERE is_active=true
							GROUP BY branch
							HAVING COUNT(*)>2;
								   



   16) GROUP BY MULTIPLE COLUMNS ->  suppose department and scholership according grouping

                            SELECT 
							      branch,scholership,
								  COUNT(*)
							FROM student_details
							GROUP BY branch,scholership;
							
 
	                            
							
	17) DISTINCT vs GROUP BY -> 							   

							 -------------
							-- DISTINCT    -> IT return value only at once
							-------------
				            SELECT 
							       DISTINCT departments
							FROM employee
							

							-------------
							-- HAVING    -> IT FIlter By Group wise and give computational result
							-------------
				            SELECT 
							       departments,AVG(salary) as "avarage_salary"
							FROM employee
							GROUP BY departments



	---------------------
	    ORDER TO WRITE 
	---------------------

                       -------------------------------------------------------------------------
	                     SELECT ->  FROM -> WHERE -> GROUP BY -> HAVING -> ORDER -> LIMIT
	                   -------------------------------------------------------------------------
	        TASK 1 ->  Count Total Employee
			           SELECT COUNT(*) FROM student_details;
 
 
			TASK 2 ->  Calculate Total scholership
			           SELECT SUM(scholership) FROM student_details;
 
			TASK 3 ->  Find AVG Scholership
			           SELECT AVG(scholership) FROM student_details
 
			TASK 4 ->  Dind Highest Scholersship
			           SELECT MAX(scholership) FROM student_details
 
			TASK 5 ->  Lowest Salary-
			           SELECT MIN(scholership) FROM student_details
 
			TASK 6 ->  Find how many employe work in eahc department
			           SELECT departments, COUNT(*) FROM employee GROUP BY departments
 
			TASK 7 ->  Find AVG Salary of each Department
			           SELECT departments ,AVG(salary) FROM employee GROUP BY departments
 
			TASK 8 ->  Find HIGHest Salary of each departments
			           SELECT departments, MAX(salary) FROM employee GROUP BY departments
 
			TASK 9 ->  Find only that department which have more than 1 employee
			           SELECT departments, COUNT(*) FROM employee GROUP BY departments HAVING COUNT(*)>1
 
			TASK 10 -> Find only that departments which have more than 60000
			           SELECT departments , AVG(salary) FROM employee GROUP BY departments HAVING AVG(salary)>60000

			TASK 11 -> Find that department which have highest salary
			           SELECT * FROM (SELECT departments , MAX(salary) FROM employee GROUP BY departments) 
	                   WHERE max = (SELECT MAX(max) FROM (SELECT departments , MAX(salary) 
					   FROM employee GROUP BY  departments))



			TASK 12 -> Write one query which return thede things -> department, total employees, avg salary, highest saary, lowest sala
			           SELECT 
					         departments,
							 COUNT(*) as "Total_Employee",
							 AVG(salary) as "Average Salary",
							 MAX(salary) as "Highest salary",
							 MIN(salary) as "Lowest salary"
					   FROM employee
					   GROUP BY departments;


           -----------------------
			MINI CHALANGE  ->    find that two departments which have more avg salary, but that departments have more than 1 employee
		   -----------------------

		                SELECT 
						      departments,
							  AVG(salary) 
						FROM employee
						GROUP BY departments
						HAVING COUNT(*)>1
						ORDER BY avg DESC
						LIMIT 2;


--------------------------------------------------------------------
   JOINS  -> select multiple tables data at a time we use joins
--------------------------------------------------------------------

  Syntax ->                SELECT ..
                           FROM tbale1
						   JOIN table2
						   ON table1.column=table2.column



  1) INNER JOIN -> ineer join select only both matching records means intersection data.eg[its return only id 1,2,3]

						   SELECT
						         e.name, b.branch,b.semester, b.scholership 
						   FROM students e
						   INNER JOIN student_details b
						   ON e.course_id=b.id;



 2)  LEFT JOIN ->   give all employes details unless they are in include or not in second column

			               SELECT
						         e.name, b.branch,b.semester, b.scholership 
						   FROM students e
						   LEFT JOIN student_details b
						   ON e.course_id=b.id;


 3) RIGHT JOIN -> second columns all data if unless ther are available or not in first column
 
                           SELECT
						         e.name, b.branch,b.semester, b.scholership 
						   FROM students e
						   RIGHT JOIN student_details b
						   ON e.course_id=b.id;



  4) FULL OUTER JOIN -> select both tables recorde if matching then combine else null
						  

			               SELECT
						         e.name, b.branch,b.semester, b.scholership 
						   FROM students e
						   FULL OUTER JOIN student_details b
						   ON e.course_id=b.id;



   5) CROSS JOIN -> Combine one row of first table to all row af second table

                           SELECT
						         e.name, b.branch,b.semester, b.scholership 
						   FROM students e
						   CROSS JOIN student_details b;
						   

   6) SELF JOIN -> join one table with itself.

			               SELECT
						         e.name, b.course_id
						   FROM students e
						   LEFT JOIN students b
						   ON e.course_id=b.id;


   7) NATURAL JOIN ->  if there r prrsent same column between two columns then natural joins itself but this is very dummy type

                           SELECT
						        *
						   FROM students e
						   NATURAL JOIN student_details b;
					      
							

						  
 */
  
							       
							

							
  


			 









