use product_database

--  Create table dept_tbl with given data 

CREATE TABLE dept_tbl(id_deptname VARCHAR(50), emp_name VARCHAR(50), salary int)
 
INSERT INTO dept_tbl VALUES
('1111-MATH', 'RAHUL', 10000),
('1111-MATH', 'RAKESH', 20000),
('2222-SCIENCE', 'AKASH', 10000),
('2222-SCIENCE', 'ANDREW', 10000),
('2222-CHEM', 'ANKIT', 25000),
('3333-CHEM', 'SONIKA', 12000),
('4444-BIO', 'HITESH', 2300),
('4444-BIO', 'AKSHAY', 10000),
('1111-MATH', 'RAJESH', 15000),
('1111-MATH', 'ROHAN', 18000),
('2222-SCIENCE', 'AARAV', 12000),
('2222-SCIENCE', 'NEHA', 13000),
('3333-CHEM', 'PRIYA', 11000),
('3333-CHEM', 'RAJ', 12500),
('4444-BIO', 'KAVYA', 2400),
('4444-BIO', 'RISHABH', 2100),
('5555-PHYSICS', 'VIVEK', 14000),
('5555-PHYSICS', 'SHIVANI', 13500);
 
SELECT * FROM dept_tbl;


--  Find the total salary of each department 
 
SELECT SUBSTRING(id_deptname, CHARINDEX('-', id_deptname)+1, LEN(id_deptname)-CHARINDEX('-', id_deptname)) AS dept_name,
SUM(salary) AS total_salary
FROM dept_tbl
GROUP BY id_deptname;