create database EmployeeManagement ;
use EmployeeManagement;
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);
INSERT INTO employee VALUES
(1,'Amit Sharma','Male','IT',60000,'2021-01-10','Delhi'),
(2,'Neha Verma','Female','HR',45000,'2020-05-18','Mumbai'),
(3,'Rohit Mehta','Male','Finance',55000,'2019-03-22','Pune'),
(4,'Priya Singh','Female','IT',72000,'2018-11-12','Bangalore'),
(5,'Ankit Patel','Male','Sales',40000,'2022-02-01','Ahmedabad'),
(6,'Sneha Iyer','Female','Finance',65000,'2021-09-18','Chennai'),
(7,'Rahul Khanna','Male','IT',80000,'2017-06-12','Gurgaon'),
(8,'Pooja Nair','Female','HR',48000,'2022-12-01','Kochi'),
(9,'Vikas Jain','Male','Sales',52000,'2020-08-25','Jaipur'),
(10,'Kavita Rao','Female','IT',75000,'2019-04-30','Hyderabad'),

(11,'Suresh Kumar','Male','Finance',58000,'2020-01-15','Delhi'),
(12,'Anjali Desai','Female','HR',46000,'2021-07-09','Surat'),
(13,'Deepak Yadav','Male','IT',67000,'2018-03-11','Noida'),
(14,'Rina Banerjee','Female','Sales',49000,'2019-09-19','Kolkata'),
(15,'Manoj Joshi','Male','Finance',62000,'2020-10-10','Udaipur'),

(16,'Simran Kaur','Female','IT',71000,'2021-02-14','Amritsar'),
(17,'Kunal Shah','Male','Sales',53000,'2022-04-17','Vadodara'),
(18,'Nitin Agarwal','Male','HR',47000,'2019-06-08','Agra'),
(19,'Swati Mishra','Female','Finance',60000,'2020-12-03','Bhopal'),
(20,'Arjun Malhotra','Male','IT',82000,'2017-08-21','Chandigarh'),

(21,'Meena Pillai','Female','HR',49000,'2021-01-25','Trivandrum'),
(22,'Rakesh Singh','Male','Sales',51000,'2022-06-30','Patna'),
(23,'Ayesha Khan','Female','Finance',64000,'2019-05-14','Lucknow'),
(24,'Tarun Gupta','Male','IT',69000,'2020-02-28','Meerut'),
(25,'Pallavi Kulkarni','Female','HR',48000,'2018-10-05','Nagpur'),

(26,'Abhishek Roy','Male','Finance',59000,'2021-03-16','Ranchi'),
(27,'Divya Sood','Female','Sales',54000,'2020-07-27','Shimla'),
(28,'Sanjay Verma','Male','IT',73000,'2019-01-20','Indore'),
(29,'Neelam Choudhary','Female','HR',45500,'2022-08-11','Ajmer'),
(30,'Mohit Bansal','Male','Finance',61000,'2018-06-01','Panipat'),

(31,'Ritu Saxena','Female','IT',76000,'2017-12-09','Ghaziabad'),
(32,'Ajay Nair','Male','Sales',50000,'2021-09-22','Thrissur'),
(33,'Shalini Gupta','Female','HR',47000,'2020-11-02','Kanpur'),
(34,'Prakash Reddy','Male','Finance',68000,'2019-04-06','Nellore'),
(35,'Ishita Sen','Female','IT',72000,'2018-02-18','Durgapur'),

(36,'Varun Kapoor','Male','Sales',56000,'2022-03-15','Faridabad'),
(37,'Sunita Devi','Female','HR',44000,'2021-05-09','Gaya'),
(38,'Akash Pandey','Male','IT',70000,'2019-08-26','Rewa'),
(39,'Nandini Joshi','Female','Finance',63000,'2020-01-30','Dehradun'),
(40,'Siddharth Jain','Male','IT',81000,'2017-07-07','Ujjain'),

(41,'Employee41','Male','IT',68000,'2021-04-12','Delhi'),
(42,'Employee42','Female','HR',46000,'2020-02-17','Mumbai'),
(43,'Employee43','Male','Sales',52000,'2022-09-01','Pune'),
(44,'Employee44','Female','Finance',65000,'2019-11-21','Bangalore'),
(45,'Employee45','Male','IT',74000,'2018-06-19','Hyderabad'),

(46,'Employee46','Female','HR',48000,'2021-12-14','Chennai'),
(47,'Employee47','Male','Finance',60000,'2020-10-10','Kolkata'),
(48,'Employee48','Female','Sales',55000,'2019-01-01','Jaipur'),
(49,'Employee49','Male','IT',79000,'2017-05-22','Noida'),
(50,'Employee50','Female','HR',47000,'2022-07-18','Gurgaon');

Select*from employee;

-- eda
SELECT COUNT(*) FROM employee;

SELECT 
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    AVG(salary) AS avg_salary
FROM employee;

SELECT department, COUNT(*) 
FROM employee
GROUP BY department;

-- ddl
ALTER TABLE employee ADD age INT;

