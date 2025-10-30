-- single line comments

/*
multi
Line
comments
*/

## This is also used as single line comment in sql

/*
Usage of comments

1. Documentation :
      - Explains the purpose of quries.
      
2. Debugging :
      - Temporarily disable parts of code.
      
3. Collaboration :
      - Helps teams understand each other's logic in a team.
*/


-- --------------------------- Database Queries ---------------------------------------
-- create database first
create database University;  

-- to work on this database you need to use it first
-- to execute ( ctrl + enter )
use University;

-- to delete database
drop database University;

-- SQL is not a case-sensitive language (As-AGE or Age will be treated as same word)

-- ----------------------------------database analysis-----------------------------------
/*
T1- Student (id, name,std, dob,gender,city,email,phone,admission_date,registation_no);
T2- Faculty(id, name, gender, subject,area of intrest ,designation, salary, contact, email, join_date);
T3- Department (id, name, hod , total faculty, visitor faculty, total students, building location, established_year, department ranking(India), phd scholars);
T4- Examination (id,name, std, satrts from, end date, mode , students_registered, students_appeared, result_declared on, status, cgpa);
T5– Hostel(id, name, type, warden_name, contact, total_rooms, capacity, occupied_rooms, location, established_year);
T6- Sports (id, name, head incharge,coach_name,coach_phone,coach_email,experience_years,total_players,location_buliding,capacity);
T7 – Library(id, book_title, author, category, isbn, publisher, edition, year_published, total_copies, available_copies);
T8 – Attendance(id, student_id, subject, date, status, remarks, faculty_id, class_type, period, recorded_time);
T9 – Placement_Record(id, student_id, company_name, role_offered, package, placement_date, interview_rounds, location, hr_contact, status);
T10- NCC (cadet-id,cadet_name,studying_in,start_date,end_date,certificate_level,current_status,certificate_awarded,date_awarded,trainer_name);
*/

-- -------------------------------table related queries------------------------------------
-- Table-1 T1- Student (id, name,std, dob,gender,city,email,phone,admission_date,registation_number);

-- create student table with 10 meaningful columns
create table Student   (
     id INT PRIMARY KEY ,
     name VARCHAR (100) NOT NULL,
     std VARCHAR(10),
     dob DATE NOT NULL,
     gender VARCHAR(10) CHECK(gender IN ('Male' , 'Female' , 'Other')), -- gender constraint
     city 	VARCHAR(50 ),      -- hometown city 
     email VARCHAR (100) UNIQUE NOT NULL,   -- unique email
     phone VARCHAR (15) NOT NULL,    -- contact number
     admission_date DATE ,   -- date of admission
     registation_number INT  
     
     );
     
     -- to display table data 
      select * from Student ;

--  insert multiple student records
 insert into Student(id, name,std, dob,gender,city,email,phone,admission_date,registation_number)
 values
(1, 'Amit Sharma', '1st Year', '2004-05-14', 'Male', 'Delhi', 'amit.sharma@univ.edu', '9876543210', '2023-08-01', 1001),
(2, 'Neha Verma', '2nd Year', '2003-11-21', 'Female', 'Mumbai', 'neha.verma@univ.edu', '9876501234', '2022-08-01', 1002),
(3, 'Ravi Kumar', '3rd Year', '2002-07-10', 'Male', 'Pune', 'ravi.kumar@univ.edu', '9123456780', '2021-08-01', 1003),
(4, 'Anjali Mehta', '1st Year', '2004-03-18', 'Female', 'Ahmedabad', 'anjali.mehta@univ.edu', '9988776655', '2023-08-05', 1004),
(5, 'Karan Singh', '2nd Year', '2003-06-22', 'Male', 'Jaipur', 'karan.singh@univ.edu', '9812345678', '2022-08-10', 1005),
(6, 'Sneha Das', '1st Year', '2001-12-01', 'Female', 'Kolkata', 'sneha.das@univ.edu', '9900112233', '2023-07-25', 1006),
(7, 'Rahul Gupta', '2nd Year', '2000-09-30', 'Male', 'Lucknow', 'rahul.gupta@univ.edu', '9776655443', '2022-08-01', 1007),
(8, 'Priya Rani', '1st Year', '2001-05-17', 'Female', 'Patna', 'priya.rani@univ.edu', '9665544332', '2023-08-01', 1008),
(9, 'Aditya Joshi', '2nd Year', '1998-02-25', 'Male', 'Chandigarh', 'aditya.joshi@univ.edu', '9554433221', '2022-07-20', 1009),
(10, 'Meera Nair', '1st Year', '2000-04-10', 'Female', 'Thiruvananthapuram', 'meera.nair@univ.edu', '9443322110', '2023-07-30', 1010);

 -- to remove complete records from student table 
 truncate table Student;
 
 -- to remove table structure (and all data)
 drop table Student;
 
 
 
 -- ..... SELECT QUERIES
 
 -- 1. To display all data 
 SELECT * FROM Student;
 
 -- 2. select specific columns
 SELECT name,std,admission_date FROM Student;
 
 -- 3. select students by name
 SELECT * FROM Student WHERE name = 'Ravi Kumar';
 
 -- 4. count the number of Student
 SELECT COUNT(*)  total_email FROM Student;
 
 -- 5. select with email containing specific word
 SELECT * FROM Student WHERE email LIKE '%singh%';
 
 -- 6. select students order by dob
 SELECT * FROM Student ORDER BY dob;
 
 -- 7. select first four city
 SELECT * FROM  Student LIMIT 4;
 
 -- 8. select students with dob year more than 2000
 SELECT * FROM Student WHERE YEAR (dob) > 2000;
 
 -- 9. select students where registration number is null
 SELECT * FROM student WHERE registation_number IS NULL;
 
 -- 10. select Student where std is not first year
 SELECT * FROM student WHERE std != '1st year';
 
 -- ...... ALTER QUERIES
 
 -- 11. add a new column
 ALTER TABLE Student ADD COLUMN cgpa DECIMAL (4,2);
 
 SELECT * FROM Student ;
 
 -- 12. drop a column 
 ALTER TABLE Student DROP COLUMN cgpa;
  
-- 13. rename a column 
ALTER TABLE Student CHANGE COLUMN std year_of_graduation VARCHAR (10);
 
 -- 14. add a new column with default value
 ALTER TABLE Student ADD COLUMN result_status VARCHAR(10) DEFAULT 'Pass';
 
 -- 15. add a unique constraint
 ALTER TABLE Student ADD CONSTRAINT unique_email UNIQUE (email);
 
 
 -- ..... DELETE QUERIES
 
 --  Disable Safe Update Mode Temporarily
SET SQL_SAFE_UPDATES = 0;

 
 -- 16. delete specific record
 DELETE FROM Student WHERE name = 'Priya Rani';
 
 SELECT * FROM Student;
 
 -- 17. delete records based on condition 
 DELETE FROM Student WHERE city = 'Jaipur';
 
 -- 18. delete records after specific date
 DELETE FROM Student WHERE admission_date >= '2023-08-01';
 
 -- 19. delete records with secific email
 DELETE FROM Student WHERE email = 'karan.singh@univ.edu';
 
 -- 20. -- 8. Delete Records Based on Multiple Conditions
DELETE FROM Student WHERE city = 'Lucknow' AND registation_number < 1005;

 
 
 
 -- T2 – Faculty(id, name, gender, subject,area of intrest, designation,salary, contact, email, join_date);
     create table Faculty (
           id INT PRIMARY KEY,
           name VARCHAR (100) NOT NULL,
           gender VARCHAR (10) CHECK(gender IN ('Male','Female','Other')),
           subject VARCHAR(100) NOT NULL,
		   area_of_intrest VARCHAR(100),
           designation VARCHAR (50),
           salary DECIMAL(10,2),
           contact VARCHAR(15),
           email VARCHAR(100) UNIQUE,
           join_date DATE
		);
        
        -- to display table data 
        select * from faculty ;
 
 -- insert multiple faculty records
   insert into Faculty (id, name, gender, subject, area_of_intrest, designation,salary, contact, email, join_date)
   values
(1, 'Dr. Arjun Mehta', 'Male','computer science', 'Artificial Intelligence', 'Professor', 120000.00, '9876543210', 'arjun.mehta@univ.edu', '2018-07-01'),
(2, 'Dr. Meera Sharma', 'Female','physics', 'space', 'Associate Professor', 110000.00, '9876543211', 'meera.sharma@univ.edu', '2019-08-15'),
(3, 'Dr. Ramesh Iyer', 'Male','Chemistry', 'Atomic medicine', 'Assistant Professor', 95000.00, '9876543212', 'ramesh.iyer@univ.edu', '2020-01-10'),
(4, 'Dr. Neha Gupta', 'Female','computer science', 'Cybersecurity', 'Professor', 130000.00, '9876543213', 'neha.gupta@univ.edu', '2017-06-01'),
(5, 'Dr. Ankit Verma', 'Male','IT', 'Web Development', 'Lecturer', 85000.00, '9876543214', 'ankit.verma@univ.edu', '2021-02-20'),
(6, 'Dr. Sneha Nair', 'Female','sociology', 'caste', 'Associate Professor', 105000.00, '9876543215', 'sneha.nair@univ.edu', '2019-09-25'),
(7, 'Dr. Rahul Das', 'Male','Biology','Virus', 'Assistant Professor', 92000.00, '9876543216', 'rahul.das@univ.edu', '2022-01-05'),
(8, 'Dr. Priya Singh', 'Female','Physics', 'nano particles', 'Professor', 125000.00, '9876543217', 'priya.singh@univ.edu', '2016-11-12'),
(9, 'Dr. Karan Malhotra', 'Male','IT', 'Big Data', 'Lecturer', 88000.00, '9876543218', 'karan.malhotra@univ.edu', '2023-03-18'),
(10, 'Dr. Alex John', 'Other', 'sociology','religion', 'Assistant Professor', 97000.00, '9876543219', 'alex.john@univ.edu', '2020-10-30');

 -- to remove complete records from faculty table 
 truncate table faculty ;
 
 -- to remove table structure (and all data)
 drop table faculty ;
 
 
 -- 1. Select all faculty members
SELECT * FROM Faculty;

-- 2. Select name, subject, and designation of all faculty
SELECT name, subject, designation FROM Faculty;

-- 3. Select faculty who teach Computer Science
SELECT * FROM Faculty WHERE subject = 'computer science';

-- 4. Select professors with salary greater than 120000
SELECT * FROM Faculty WHERE designation = 'Professor' AND salary > 120000;

-- 5. Count total faculty members
SELECT COUNT(*) AS total_faculty FROM Faculty;

-- 6. Select faculty who joined after 2020
SELECT * FROM Faculty WHERE join_date > '2020-01-01';

-- 7. Select faculty ordered by salary (highest first)
SELECT * FROM Faculty ORDER BY salary DESC;

-- 8. Select faculty whose area of interest contains 'Data'
SELECT * FROM Faculty WHERE area_of_intrest LIKE '%Data%';

-- 9. Select faculty with email ending in 'univ.edu'
SELECT * FROM Faculty WHERE email LIKE '%@univ.edu';

-- 10. Select top 3 highest paid faculty
SELECT * FROM Faculty ORDER BY salary DESC LIMIT 3;


-- 1. Add a new column for department
ALTER TABLE Faculty 
ADD COLUMN department VARCHAR(100);

-- 2. Modify salary column to allow higher precision
ALTER TABLE Faculty 
MODIFY COLUMN salary DECIMAL(15,2);

-- 3. Rename column 'area_of_intrest' to 'research_area'
ALTER TABLE Faculty 
CHANGE COLUMN area_of_intrest research_area VARCHAR(100);

-- 4. Set default designation to 'Lecturer'
ALTER TABLE Faculty 
ALTER COLUMN designation SET DEFAULT 'Lecturer';

-- 5. Add a unique constraint on contact
ALTER TABLE Faculty 
ADD CONSTRAINT unique_contact UNIQUE (contact);

--  Disable Safe Update Mode Temporarily
SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;  -- Re-enable safe updates


-- 1. Delete faculty with designation 'Lecturer'
DELETE FROM Faculty WHERE designation = 'Lecturer';

-- 2. Delete faculty earning less than 90,000
DELETE FROM Faculty WHERE salary < 90000;

-- 3. Delete faculty who joined before 2018
DELETE FROM Faculty WHERE join_date < '2018-01-01';

-- 4. Delete faculty whose subject is 'sociology'
DELETE FROM Faculty WHERE subject = 'sociology';

-- 5. Delete all records (use with caution)
DELETE FROM Faculty;

 SELECT *FROM Faculty;
 
 
 
 
 
 
 
 
-- T3- Department (id, name, hod , total_faculty, visitor_faculty, total_students, building_location, established_year, department_ranking, phd_scholars);
create table Department (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    hod VARCHAR(100),
	total_faculty INT,
    visitor_faculty INT,
	total_students INT,
	building VARCHAR(50),
	established_year YEAR,
    department_ranking INT ,
    phd_scholars INT 
    
 );
 
 -- Insert records
insert into Department (id, name, hod , total_faculty, visitor_faculty, total_students, building , established_year, department_ranking, phd_scholars)
values
(1, 'Computer Science', 'Dr. A. Sharma', 30, 5, 600, 'Block A', 2001, 2, 15),
(2, 'Mathematics', 'Dr. B. Rao', 22, 3, 450, 'Block B', 1998, 4, 10),
(3, 'Physics', 'Dr. C. Iyer', 28, 2, 480, 'Block C', 2000, 3, 12),
(4, 'Chemistry', 'Dr. D. Verma', 25, 4, 500, 'Block D', 1999, 5, 9),
(5, 'Biotechnology', 'Dr. E. Nair', 20, 1, 420, 'Block E', 2005, 6, 7),
(6, 'Economics', 'Dr. F. Singh', 24, 3, 460, 'Block F', 2003, 7, 8),
(7, 'History', 'Dr. G. Mehta', 18, 2, 400, 'Block G', 1997, 8, 5),
(8, 'Political Science', 'Dr. H. Das', 21, 3, 430, 'Block H', 2004, 9, 6),
(9, 'Mechanical Engg', 'Dr. I. Reddy', 35, 6, 650, 'Block I', 1995, 1, 18),
(10, 'Electrical Engg', 'Dr. J. Khan', 32, 4, 620, 'Block J', 1996, 2, 16);

-- Display department data
select * from Department;

-- Remove all department records
truncate table Department;

-- Drop department table
drop table Department;

-- 1. Select all departments
SELECT * FROM Department;

-- 2. Select department name and HOD only
SELECT name, hod FROM Department;

-- 3. Select departments with more than 25 faculty
SELECT * FROM Department WHERE total_faculty > 25;

-- 4. Select top 3 ranked departments
SELECT * FROM Department ORDER BY department_ranking ASC LIMIT 3;

-- 5. Count total students across all departments
SELECT SUM(total_students) AS total_students_all_departments FROM Department;

-- 6. Select departments established before 2000
SELECT * FROM Department WHERE established_year < 2000;

-- 7. Select departments where visitor faculty is less than 3
SELECT * FROM Department WHERE visitor_faculty < 3;

-- 8. Select department with maximum number of PhD scholars
SELECT * FROM Department ORDER BY phd_scholars DESC LIMIT 1;

-- 9. Select all departments located in 'Block A' or 'Block B'
SELECT * FROM Department WHERE building IN ('Block A','Block B');

-- 10. Select departments ordered by number of students (highest first)
SELECT * FROM Department ORDER BY total_students DESC;


-- 1. Add a new column for research_funding
ALTER TABLE Department 
ADD COLUMN research_funding DECIMAL(15,2);

-- 2. Modify department_ranking column to ensure ranking is positive
ALTER TABLE Department 
MODIFY COLUMN department_ranking INT CHECK (department_ranking > 0);

-- 3. Rename column 'hod' to 'head_of_department'
ALTER TABLE Department 
CHANGE COLUMN hod head_of_department VARCHAR(100);

-- 4. Set default value for visitor_faculty as 0
ALTER TABLE Department 
ALTER COLUMN visitor_faculty SET DEFAULT 0;

-- 5. Add a unique constraint on department name
ALTER TABLE Department 
ADD CONSTRAINT unique_department_name UNIQUE (name);


-- 1. Delete department with ranking greater than 8
DELETE FROM Department WHERE department_ranking > 8;

-- 2. Delete departments with less than 20 faculty
DELETE FROM Department WHERE total_faculty < 20;

-- 3. Delete departments established before 1998
DELETE FROM Department WHERE established_year < 1998;

-- 4. Delete departments located in 'Block G'
DELETE FROM Department WHERE building = 'Block G';

-- 5. Delete all records from Department table
DELETE FROM Department;

SEleCT *FROM Department;





-- T4- Examination (id,name, std, satrts from, end date, mode , students_registered, students_appeared, result_declared on, status, cgpa);
create table Examination (

 id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  std VARCHAR(20),  -- standard or class level (e.g. 'UG', 'PG')
  start_date DATE,
  end_date DATE,
  mode VARCHAR(20),  -- e.g., 'Online', 'Offline', 'Hybrid'
  students_registered INT,
  students_appeared INT,
  result_declared_on DATE,
  status VARCHAR(20),  -- e.g., 'Scheduled', 'Completed', 'Ongoing'
  cgpa DECIMAL(3,2)   


);

 -- Insert records
insert into Examination
 values
 (1, 'Mid Term Exam', 'UG', '2025-03-01', '2025-03-10', 'Offline', 320, 310, '2025-03-20', 'Completed', 8.35),
(2, 'Final Semester Exam', 'PG', '2025-06-01', '2025-06-15', 'Offline', 280, 270, '2025-07-01', 'Completed', 8.90),
(3, 'Entrance Test', 'UG', '2025-04-10', '2025-04-10', 'Online', 500, 480, '2025-04-20', 'Completed', 7.85),
(4, 'Backlog Exam', 'UG', '2025-08-01', '2025-08-05', 'Offline', 150, 140, '2025-08-12', 'Completed', 6.95),
(5, 'Internal Assessment', 'PG', '2025-02-15', '2025-02-20', 'Online', 220, 215, '2025-02-28', 'Completed', 8.20),
(6, 'Revaluation Exam', 'UG', '2025-09-01', '2025-09-03', 'Offline', 80, 78, '2025-09-10', 'Completed', 7.10),
(7, 'Supplementary Exam', 'UG', '2025-08-10', '2025-08-14', 'Offline', 130, 125, '2025-08-22', 'Completed', 6.50),
(8, 'Project Viva', 'PG', '2025-05-05', '2025-05-06', 'Hybrid', 60, 59, '2025-05-10', 'Completed', 9.20),
(9, 'Sessional Test', 'UG', '2025-07-15', '2025-07-17', 'Online', 300, 290, '2025-07-25', 'Completed', 8.00),
(10, 'Semester End Exam', 'PG', '2025-12-01', '2025-12-20', 'Offline', 260, 250, '2026-01-05', 'Scheduled', 8.24 );
  
  -- Display  Examination
select * from Examination ;

-- Remove Examination data
truncate table Examiniation ;

-- Drop Examination 
drop table Examination ;

-- 1. Select all columns from Examination
SELECT * FROM Examination;

-- 2. Select exam name and mode
SELECT name, mode FROM Examination;

-- 3. Select a specific exam by name
SELECT * FROM Examination WHERE name = 'Mid Term Exam';

-- 4. Select all exams conducted in Offline mode
SELECT * FROM Examination WHERE mode = 'Offline';

-- 5. Count total number of exams
SELECT COUNT(*) AS total_exams FROM Examination;

-- 6. Select exams where status contains 'Completed'
SELECT * FROM Examination WHERE status LIKE '%Completed%';

-- 7. Select exams ordered by name
SELECT * FROM Examination ORDER BY name;

-- 8. Select exams with names starting with 'S'
SELECT * FROM Examination WHERE name LIKE 'S%';

-- 9. Select exams with CGPA greater than 8
SELECT * FROM Examination WHERE cgpa > 8;

-- 10. Select first 5 exams
SELECT * FROM Examination LIMIT 5;



-- 1. Add a new column for exam_type
ALTER TABLE Examination 
ADD COLUMN exam_type VARCHAR(50);

-- 2. Modify cgpa column to allow 1 decimal (0–10 range)
ALTER TABLE Examination 
MODIFY COLUMN cgpa DECIMAL(4,2) CHECK (cgpa BETWEEN 0 AND 10);

-- 3. Rename column 'std' to 'level'
ALTER TABLE Examination 
CHANGE COLUMN std level VARCHAR(20);

-- 4. Set default mode as 'Offline'
ALTER TABLE Examination 
ALTER COLUMN mode SET DEFAULT 'Offline';

-- 5. Add a unique constraint on exam name
ALTER TABLE Examination 
ADD CONSTRAINT unique_exam_name UNIQUE (name);


-- 1. Delete exams with CGPA below 7
DELETE FROM Examination WHERE cgpa < 7.00;

-- 2. Delete exams with fewer than 100 registered students
DELETE FROM Examination WHERE students_registered < 100;

-- 3. Delete exams that are Hybrid mode
DELETE FROM Examination WHERE mode = 'Hybrid';

-- 4. Delete exams with status 'Scheduled'
DELETE FROM Examination WHERE status = 'Scheduled';

-- 5. Delete all records from Examination table
DELETE FROM Examination;




-- T5– Hostel(id, name, type, warden_name, contact, total_rooms, capacity, occupied_rooms, location, established_year);
 create table Hostel (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(20) CHECK(type IN ('Boys', 'Girls', 'Co-ed')),
    warden_name VARCHAR(100),
    contact VARCHAR(15),
    total_rooms INT,
    capacity INT,
    occupied_rooms INT,
    location VARCHAR(100),
    established_year YEAR
);

-- Insert records
insert into Hostel 
values
(1, 'Nalanda', 'Boys', 'Mr. S. Raghav', '9876543210', 100, 300, 95, 'North Campus', 2005),
(2, 'Vikramshila', 'Girls', 'Ms. A. Sharma', '9876543211', 90, 270, 88, 'South Campus', 2008),
(3, 'Takshashila', 'Co-ed', 'Mr. V. Kumar', '9876543212', 120, 360, 110, 'East Campus', 2012),
(4, 'Aryabhatta', 'Boys', 'Mr. D. Mehta', '9876543213', 80, 240, 75, 'West Campus', 2000),
(5, 'Gargi', 'Girls', 'Ms. R. Verma', '9876543214', 85, 255, 80, 'North Campus', 2003),
(6, 'Charaka', 'Boys', 'Mr. T. Singh', '9876543215', 70, 210, 68, 'South Campus', 2009),
(7, 'Apala', 'Girls', 'Ms. N. Das', '9876543216', 75, 225, 73, 'East Campus', 2011),
(8, 'Panini', 'Co-ed', 'Mr. L. Joshi', '9876543217', 95, 285, 92, 'Main Campus', 2015),
(9, 'Bose Hall', 'Boys', 'Mr. K. Roy', '9876543218', 60, 180, 58, 'Science Block', 2013),
(10, 'Sarojini', 'Girls', 'Ms. P. Iyer', '9876543219', 100, 300, 98, 'Arts Block', 2007);

-- View hostels
select * from Hostel;

-- Truncate hostels
truncate table Hostel;

-- Drop hostel
drop table Hostel;
 
 
 -- 1. Select all hostels
SELECT * FROM Hostel;

-- 2. Select hostel name and type
SELECT name, type FROM Hostel;

-- 3. Select a hostel by name
SELECT * FROM Hostel WHERE name = 'Nalanda';

-- 4. Select all Girls hostels
SELECT * FROM Hostel WHERE type = 'Girls';

-- 5. Count total number of hostels
SELECT COUNT(*) AS total_hostels FROM Hostel;

-- 6. Select hostels where location contains 'Campus'
SELECT * FROM Hostel WHERE location LIKE '%Campus%';

-- 7. Select hostels ordered by name
SELECT * FROM Hostel ORDER BY name;

-- 8. Select hostels with names starting with 'S'
SELECT * FROM Hostel WHERE name LIKE 'S%';

-- 9. Select hostels established after 2010
SELECT * FROM Hostel WHERE established_year > 2010;

-- 10. Select first 5 hostels
SELECT * FROM Hostel LIMIT 5;


-- 1. Add a new column for hostel fees
ALTER TABLE Hostel 
ADD COLUMN hostel_fee DECIMAL(10,2);

-- 2. Modify capacity column to ensure positive values
ALTER TABLE Hostel 
MODIFY COLUMN capacity INT CHECK (capacity > 0);

-- 3. Rename column 'warden_name' to 'hostel_warden'
ALTER TABLE Hostel 
CHANGE COLUMN warden_name hostel_warden VARCHAR(100);

-- 4. Set default type as 'Co-ed'
ALTER TABLE Hostel 
ALTER COLUMN type SET DEFAULT 'Co-ed';

-- 5. Add a unique constraint on hostel name
ALTER TABLE Hostel 
ADD CONSTRAINT unique_hostel_name UNIQUE (name);


-- 1. Delete all Boys hostels
DELETE FROM Hostel WHERE type = 'Boys';

-- 2. Delete hostels with fewer than 80 rooms
DELETE FROM Hostel WHERE total_rooms < 80;

-- 3. Delete hostels established before 2005
DELETE FROM Hostel WHERE established_year < 2005;

-- 4. Delete hostels located in 'North Campus'
DELETE FROM Hostel WHERE location = 'North Campus';

-- 5. Delete all records from Hostel table
DELETE FROM Hostel;



 
 
-- T6 - Sports (id, name, head incharge,coach_name,coach_phone,coach_email,experience_years,total_players,location_buliding,capacity);
CREATE TABLE Sports (
  id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  head_incharge VARCHAR(100),
  coach_name VARCHAR(100),
  coach_phone VARCHAR(15),
  coach_email VARCHAR(100),
  experience_years INT,
  total_players INT,
  location_building VARCHAR(100),
  capacity INT
);

-- insert multiple sports records
INSERT INTO Sports 
VALUES
(1, 'Football', 'Mr. A. Khanna', 'Coach R. Singh', '9876512340', 'rsingh@univ.edu', 10, 22, 'Sports Complex A', 30),
(2, 'Cricket', 'Mr. B. Mehta', 'Coach A. Patel', '9876512341', 'apatel@univ.edu', 12, 24, 'Cricket Ground', 35),
(3, 'Basketball', 'Ms. C. Rao', 'Coach N. Sharma', '9876512342', 'nsharma@univ.edu', 8, 15, 'Indoor Hall 1', 20),
(4, 'Volleyball', 'Ms. D. Verma', 'Coach M. Joshi', '9876512343', 'mjoshi@univ.edu', 6, 12, 'Indoor Hall 2', 18),
(5, 'Badminton', 'Mr. E. Das', 'Coach V. Nair', '9876512344', 'vnair@univ.edu', 7, 10, 'Badminton Court', 15),
(6, 'Hockey', 'Mr. F. Iyer', 'Coach T. Rao', '9876512345', 'trao@univ.edu', 11, 18, 'Hockey Field', 25),
(7, 'Tennis', 'Ms. G. Sen', 'Coach S. Banerjee', '9876512346', 'sbanerjee@univ.edu', 9, 6, 'Tennis Court', 10),
(8, 'Table Tennis', 'Ms. H. Yadav', 'Coach A. Kapoor', '9876512347', 'akapoor@univ.edu', 5, 8, 'TT Room', 12),
(9, 'Athletics', 'Mr. I. Roy', 'Coach K. Chatterjee', '9876512348', 'kchat@univ.edu', 13, 30, 'Track Field', 40),
(10, 'Swimming', 'Ms. J. Pillai', 'Coach U. Thomas', '9876512349', 'uthomas@univ.edu', 10, 14, 'Aquatic Centre', 20);

-- View sports
select * from Sports ;

-- Truncate sports
truncate table Sports;

-- Drop sports
drop table Sports;


-- 1. Select all sports
SELECT * FROM Sports;

-- 2. Select sport name and coach name
SELECT name, coach_name FROM Sports;

-- 3. Select a sport by name
SELECT * FROM Sports WHERE name = 'Cricket';

-- 4. Select all sports with capacity greater than 20
SELECT * FROM Sports WHERE capacity > 20;

-- 5. Count total number of sports
SELECT COUNT(*) AS total_sports FROM Sports;

-- 6. Select sports where coach email ends with 'univ.edu'
SELECT * FROM Sports WHERE coach_email LIKE '%@univ.edu';

-- 7. Select sports ordered by name
SELECT * FROM Sports ORDER BY name;

-- 8. Select sports with names starting with 'T'
SELECT * FROM Sports WHERE name LIKE 'T%';

-- 9. Select sports with more than 10 years of coach experience
SELECT * FROM Sports WHERE experience_years > 10;

-- 10. Select the first 5 sports
SELECT * FROM Sports LIMIT 5;



-- 1. Add a new column for tournament_wins
ALTER TABLE Sports 
ADD COLUMN tournament_wins INT;

-- 2. Modify total_players to ensure positive values
ALTER TABLE Sports 
MODIFY COLUMN total_players INT CHECK (total_players > 0);

-- 3. Rename column 'head_incharge' to 'incharge_name'
ALTER TABLE Sports 
CHANGE COLUMN head_incharge incharge_name VARCHAR(100);

-- 4. Set default capacity as 20
ALTER TABLE Sports 
ALTER COLUMN capacity SET DEFAULT 20;

-- 5. Add a unique constraint on coach_phone
ALTER TABLE Sports 
ADD CONSTRAINT unique_coach_phone UNIQUE (coach_phone);


-- 1. Delete sports with fewer than 10 players
DELETE FROM Sports WHERE total_players < 10;

-- 2. Delete sports with coach experience less than 6 years
DELETE FROM Sports WHERE experience_years < 6;

-- 3. Delete sports located in 'Indoor Hall 2'
DELETE FROM Sports WHERE location_building = 'Indoor Hall 2';

-- 4. Delete all sports with capacity less than 15
DELETE FROM Sports WHERE capacity < 15;

-- 5. Delete all records from Sports table
DELETE FROM Sports;




-- T7 – Library(id, book_title, author, category, isbn, publisher, edition, year_published, total_copies, available_copies);
create table Library (
    id INT PRIMARY KEY,
    book_title VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(50),
    isbn VARCHAR(20) UNIQUE,
    publisher VARCHAR(100),
    edition VARCHAR(20),
    year_published YEAR,
    total_copies INT CHECK(total_copies >= 0),
    available_copies INT CHECK(available_copies >= 0)
);

-- Insert records
insert into Library
 values
(1, 'Introduction to Algorithm', 'Thomas H. Cormen', 'Computer Science', '9780262033848', 'MIT Press', '3rd', 2009, 10, 7),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '9780743273565', 'Scribner', '1st', 1925, 5, 2),
(3, 'A Brief History of Time', 'Stephen Hawking', 'Science', '9780553380163', 'Bantam', 'Updated', 1998, 6, 4),
(4, 'The Theory of Everything', 'Stephen Hawking', 'Science', '9788179925911', 'Jaico Publishing', '1st', 2006, 8, 6),
(5, 'The Alchemist', 'Paulo Coelho', 'Fiction', '9780061122415', 'HarperOne', '25th Anniversary', 1988, 12, 9),
(6, 'Database System Concepts', 'Abraham Silberschatz', 'Computer Science', '9780073523323', 'McGraw-Hill', '6th', 2010, 7, 3),
(7, '1984', 'George Orwell', 'Fiction', '9780451524935', 'Plume', '1st', 1949, 4, 1),
(8, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', '9780062316097', 'Harper', '1st', 2014, 9, 6),
(9, 'Operating System Concepts', 'Abraham Silberschatz', 'Computer Science', '9781118063330', 'Wiley', '9th', 2012, 5, 2),
(10, 'The Intelligent Investor', 'Benjamin Graham', 'Finance', '9780060555664', 'HarperBusiness', 'Rev. Ed.', 1949, 6, 5);

-- View library records
select * from Library;

-- Remove all library data
truncate table Library;

-- Drop library table
drop table Library;


-- 1. Select all books
SELECT * FROM Library;

-- 2. Select book title and author
SELECT book_title, author FROM Library;

-- 3. Select books by Stephen Hawking
SELECT * FROM Library WHERE author = 'Stephen Hawking';

-- 4. Select all Computer Science books
SELECT * FROM Library WHERE category = 'Computer Science';

-- 5. Count total number of books in library
SELECT COUNT(*) AS total_books FROM Library;

-- 6. Select books published after 2000
SELECT * FROM Library WHERE year_published > 2000;

-- 7. Select books ordered by year published
SELECT * FROM Library ORDER BY year_published;

-- 8. Select books where available copies < 3
SELECT * FROM Library WHERE available_copies < 3;

-- 9. Select books with publisher = 'Harper'
SELECT * FROM Library WHERE publisher = 'Harper';

-- 10. Select the first 5 books
SELECT * FROM Library LIMIT 5;



-- 1. Add a column for language
ALTER TABLE Library 
ADD COLUMN language VARCHAR(50);

-- 2. Modify year_published to ensure year > 1900
ALTER TABLE Library 
MODIFY COLUMN year_published YEAR CHECK (year_published >= 1900);

-- 3. Rename column 'book_title' to 'title'
ALTER TABLE Library 
CHANGE COLUMN book_title title VARCHAR(150);

-- 4. Set default category as 'General'
ALTER TABLE Library 
ALTER COLUMN category SET DEFAULT 'General';

-- 5. Add unique constraint on title + author (no duplicate book)
ALTER TABLE Library 
ADD CONSTRAINT unique_book UNIQUE (book_title, author);



-- 1. Delete all Fiction books
DELETE FROM Library WHERE category = 'Fiction';

-- 2. Delete books published before 1950
DELETE FROM Library WHERE year_published < 1950;

-- 3. Delete books with less than 2 available copies
DELETE FROM Library WHERE available_copies < 2;

-- 4. Delete books by Paulo Coelho
DELETE FROM Library WHERE author = 'Paulo Coelho';

-- 5. Delete all records from Library
DELETE FROM Library;




-- T8 – Attendance(id, student_id, subject, date, status, remarks, faculty_id, class_type, period, recorded_time);
create table Attendance (
    id INT PRIMARY KEY,
    student_id INT not null ,
    subject VARCHAR(100),
    date DATE ,
    status VARCHAR(10) CHECK(status IN ('Present', 'Absent', 'Late')),
    remarks TEXT,
    faculty_id INT,
    class_type VARCHAR(20),         -- lecture/lab/tutorial
    period INT CHECK(period BETWEEN 1 AND 8),
    recorded_time TIME
);

-- Insert records
insert into Attendance
 values
 (1, 101, 'Data Structures', '2025-08-01', 'Present', 'On time', 201, 'Lecture', 1, '09:00'),
(2, 102, 'Operating Systems', '2025-08-01', 'Absent', 'Medical leave', 202, 'Lecture', 2,'10:00'),
(3, 103, 'Mathematics II', '2025-08-01', 'present', '5 min late', 203, 'Tutorial', 3, '11:00'),
(4, 104, 'Physics', '2025-08-01', 'Present', 'on time', 204, 'Lab', 4, '12:00'),
(5, 105, 'Operating Systems', '2025-08-02', 'Present', 'Excellent participation', 202, 'Lecture', 1, '09:00'),
(6, 106, 'Mathematics II', '2025-08-02', 'Present', 'late', 203, 'Lecture', 2, '10:00'),
(7, 107, 'Physics', '2025-08-02', 'Absent', 'Family emergency', 204, 'Lab', 3, ' 11:00'),
(8, 108, 'Data Structures', '2025-08-02', 'Present', 'late', 201, 'Tutorial', 4, '12:00'),
(9, 109, 'Mathematics II', '2025-08-03', 'Present', 'on time', 203, 'Lecture', 2, '10:00'),
(10, 110, 'Physics', '2025-08-03', 'Present', 'on time', 204, 'Lecture', 3, '11:00');

-- View Attandance records
select * from Attandance;

-- Remove all attandance records data
truncate table Attendence ;

-- Drop attandance table
drop table Attendence ;


-- 1. Select all attendance records
SELECT * FROM Attendance;

-- 2. Select student_id and status for 2025-08-01
SELECT student_id, status FROM Attendance WHERE date = '2025-08-01';

-- 3. Select all students who were absent
SELECT * FROM Attendance WHERE status = 'Absent';

-- 4. Count total 'Present' records
SELECT COUNT(*) AS total_present FROM Attendance WHERE status = 'Present';

-- 5. Select attendance by subject = 'Physics'
SELECT * FROM Attendance WHERE subject = 'Physics';

-- 6. Select records ordered by recorded_time
SELECT * FROM Attendance ORDER BY recorded_time;

-- 7. Select unique subjects from attendance
SELECT DISTINCT subject FROM Attendance;

-- 8. Select records where remarks include 'late'
SELECT * FROM Attendance WHERE remarks LIKE '%late%';

-- 9. Select students who attended Lecture type classes
SELECT * FROM Attendance WHERE class_type = 'Lecture';

-- 10. Select the first 5 attendance records
SELECT * FROM Attendance LIMIT 5;


-- 1. Add a column for semester
ALTER TABLE Attendance 
ADD COLUMN semester VARCHAR(10);

-- 2. Modify remarks to allow max 500 characters
ALTER TABLE Attendance 
MODIFY COLUMN remarks VARCHAR(500);

-- 3. Rename column 'date' to 'attendance_date'
ALTER TABLE Attendance 
CHANGE COLUMN date attendance_date DATE;

-- 4. Set default status as 'Absent'
ALTER TABLE Attendance 
ALTER COLUMN status SET DEFAULT 'Absent';

-- 5. Add constraint: period must be unique per student per date
ALTER TABLE Attendance 
ADD CONSTRAINT unique_student_date_period UNIQUE (student_id, attendance_date, period);


-- 1. Delete all 'Absent' records
DELETE FROM Attendance WHERE status = 'Absent';

-- 2. Delete attendance records of subject 'Mathematics II'
DELETE FROM Attendance WHERE subject = 'Mathematics II';

-- 3. Delete all records before '2025-08-02'
DELETE FROM Attendance WHERE date < '2025-08-02';

-- 4. Delete records where remarks are 'late'
DELETE FROM Attendance WHERE remarks = 'late';

-- 5. Delete all records from Attendance
DELETE FROM Attendance;




-- T9 – Placement_Record(id, student_id, company_name, role_offered, package, placement_date, interview_rounds, location, hr_contact, status);
create table Placement_Record (
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    company_name VARCHAR(100),
    role_offered VARCHAR(100),
    package DECIMAL(10,2),
    placement_date DATE,
    interview_rounds INT CHECK(interview_rounds > 0),
    location VARCHAR(100),
    hr_contact VARCHAR(15),
    status VARCHAR(20) CHECK(status IN ('Selected', 'Rejected', 'Pending'))
);

-- Insert records
insert into Placement_Record 
values
(1, 101, 'Google', 'Software Engineer', 4500000.00, '2025-07-15', 5, 'Bangalore', '9876500011', 'Selected'),
(2, 102, 'TCS', 'System Engineer', 380000.00, '2025-07-10', 3, 'Mumbai', '9876500012', 'Selected'),
(3, 103, 'Infosys', 'Java Developer', 420000.00, '2025-07-18', 4, 'Pune', '9876500013', 'Selected'),
(4, 104, 'Amazon', 'Data Analyst', 1200000.00, '2025-07-12', 4, 'Hyderabad', '9876500014', 'Selected'),
(5, 105, 'Wipro', 'Network Engineer', 360000.00, '2025-07-20', 3, 'Chennai', '9876500015', 'Rejected'),
(6, 106, 'Microsoft', 'Product Manager', 2400000.00, '2025-07-25', 5, 'Hyderabad', '9876500016', 'Selected'),
(7, 107, 'IBM', 'Cloud Engineer', 850000.00, '2025-07-22', 3, 'Bangalore', '9876500017', 'Pending'),
(8, 108, 'Capgemini', 'QA Tester', 400000.00, '2025-07-30', 2, 'Noida', '9876500018', 'Selected'),
(9, 109, 'Accenture', 'DevOps Engineer', 750000.00, '2025-07-28', 4, 'Gurgaon', '9876500019', 'Selected'),
(10, 110, 'Zoho', 'Frontend Developer', 650000.00, '2025-08-01', 3, 'Chennai', '9876500020', 'Pending');
-- View placement data
select * from Placement_Record;

-- Truncate placements
truncate table Placement_Record;

-- Drop placement table
drop table Placement_Record;


-- T10- NCC (cadet-id,cadet_name,studying_in,start_date,end_date,certificate_level,current_status,certificate_awarded,date_awarded,trainer_name);

CREATE TABLE NCC (
  cadet_id INT PRIMARY KEY,
  cadet_name VARCHAR(100),
  studying_in VARCHAR(50),           -- e.g., 'B.Sc. 2nd Year', 'BA 1st Year'
  start_date DATE,
  end_date DATE,
  certificate_level VARCHAR(10),     -- 'A', 'B', 'C'
  current_status VARCHAR(20),        -- 'Active', 'Completed', 'Dropped'
  certificate_awarded VARCHAR(10),   -- 'A', 'B', 'C', or NULL
  date_awarded DATE,
  trainer_name VARCHAR(100)
);

INSERT INTO NCC (
  cadet_id, cadet_name, studying_in, start_date, end_date, certificate_level,
  current_status, certificate_awarded, date_awarded, trainer_name
) VALUES
(1, 'Arjun Mehra', 'B.Sc. 2nd Year', '2023-07-01', '2024-06-30', 'B', 'Completed', 'B', '2024-07-15', 'Captain R. Singh'),
(2, 'Pooja Sharma', 'BA 1st Year', '2024-07-01', '2025-06-30', 'A', 'Active', NULL, NULL, 'Lieutenant A. Verma'),
(3, 'Rahul Yadav', 'B.Com 2nd Year', '2022-07-01', '2023-06-30', 'C', 'Completed', 'C', '2023-07-10', 'Major S. Iyer'),
(4, 'Neha Pillai', 'B.Sc. 3rd Year', '2023-07-01', '2024-06-30', 'B', 'Completed', 'B', '2024-07-20', 'Captain R. Singh'),
(5, 'Aman Tiwari', 'BBA 1st Year', '2024-07-01', '2025-06-30', 'A', 'Active', NULL, NULL, 'Lieutenant A. Verma'),
(6, 'Shruti Nair', 'BCA 2nd Year', '2023-07-01', '2024-06-30', 'B', 'Completed', 'B', '2024-07-18', 'Captain R. Singh'),
(7, 'Rohan Das', 'BA 3rd Year', '2022-07-01', '2023-06-30', 'C', 'Completed', 'C', '2023-07-15', 'Major S. Iyer'),
(8, 'Meena Gupta', 'B.Sc. 1st Year', '2024-07-01', '2025-06-30', 'A', 'Active', NULL, NULL, 'Lieutenant A. Verma'),
(9, 'Siddharth Roy', 'B.Com 3rd Year', '2023-07-01', '2024-06-30', 'C', 'Completed', 'C', '2024-07-25', 'Major S. Iyer'),
(10, 'Divya Joshi', 'BBA 2nd Year', '2022-07-01', '2023-06-30', 'B', 'Dropped', NULL, NULL, 'Captain R. Singh');
-- View NCC data
select * from NCC;

-- Truncate NCC
truncate table NCC;

-- Drop NCC table
drop table NCC;
