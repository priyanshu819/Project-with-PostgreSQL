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
			 









