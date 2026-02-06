-- project smart gym management system

-- DATABASE CREATION
CREATE DATABASE gym_sym1;
USE gym_sym1;
-- TABLE CREATION 
CREATE TABLE Trainer_Profile (
    trainer_id INT PRIMARY KEY,
    trainer_profile JSON
);
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    age INT CHECK (age BETWEEN 18 AND 60),
    gender VARCHAR(10),
    plan_id INT,
    trainer_id INT,
    status VARCHAR(10) CHECK (status IN ('Active','Expired')),
    members_json JSON,
    CONSTRAINT fk_member_trainer 
      FOREIGN KEY (trainer_id) REFERENCES Trainer_Profile(trainer_id)
);
CREATE TABLE Attendance_Log (
    log_id INT PRIMARY KEY,
    member_id INT,
    attendance_json JSON,
    CONSTRAINT fk_attendance_member
      FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
CREATE TABLE Member_Progress (
    progress_id INT PRIMARY KEY,
    member_id INT,
    progress_data JSON,
    CONSTRAINT fk_progress_member
      FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    member_id INT UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(10) CHECK (status IN ('Active','Expired')),
    Subscriptions_JSON JSON,
    CONSTRAINT fk_subscription_member
      FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    member_id INT UNIQUE,
    amount DECIMAL(8,2) CHECK (amount > 0),
    payment_date DATE NOT NULL,
    payment_mode VARCHAR(20),
    Payments_json JSON,
    CONSTRAINT fk_payment_member
      FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
show tables;

-- insertion the data
INSERT INTO Trainer_Profile VALUES
(201,'{"trainer_name":"Amit Verma","experience":6,"specialization":"Strength","rating":4.6}'),
(202,'{"trainer_name":"Riya Singh","experience":4,"specialization":"Yoga","rating":4.8}'),
(203,'{"trainer_name":"Ajit","experience":5,"specialization":"Pilates","rating":4.9}'),
(204,'{"trainer_name":"Vikas","experience":7,"specialization":"CrossFit","rating":4.7}'),
(205,'{"trainer_name":"Neelam","experience":3,"specialization":"Zumba","rating":4.5}');

INSERT INTO Members VALUES
(1,'Rahul Sharma',25,'Male',101,201,'Active','{"city":"Delhi"}'),
(2,'Neha Gupta',28,'Female',102,202,'Active','{"city":"Mumbai"}'),
(3,'Amit Kumar',30,'Male',103,201,'Active','{"city":"Bangalore"}'),
(4,'Pooja Mehta',26,'Female',101,202,'Active','{"city":"Ahmedabad"}'),
(5,'Suresh Yadav',35,'Male',102,203,'Active','{"city":"Lucknow"}'),
(6,'Kavita Singh',29,'Female',104,201,'Expired','{"city":"Jaipur"}'),
(7,'Rohit Malhotra',32,'Male',103,202,'Active','{"city":"Chandigarh"}'),
(8,'Sneha Patel',24,'Female',101,203,'Active','{"city":"Surat"}'),
(9,'Ankit Jain',27,'Male',102,204,'Active','{"city":"Indore"}'),
(10,'Nisha Roy',31,'Female',103,205,'Expired','{"city":"Kolkata"}'),
(11,'Manish Verma',34,'Male',101,204,'Active','{"city":"Noida"}'),
(12,'Divya Sharma',22,'Female',104,205,'Active','{"city":"Pune"}'),
(13,'Kunal Shah',29,'Male',102,201,'Active','{"city":"Vadodara"}'),
(14,'Meena Joshi',36,'Female',103,202,'Expired','{"city":"Udaipur"}'),
(15,'Arjun Singh',26,'Male',101,203,'Active','{"city":"Bhopal"}');

INSERT INTO Subscriptions VALUES
(301,1,'2025-01-01','2025-03-31','Active','{"plan":"Premium"}'),
(302,2,'2025-01-15','2025-06-30','Active','{"plan":"Standard"}'),
(303,3,'2024-10-01','2024-12-31','Expired','{"plan":"Basic"}'),
(304,4,'2025-02-01','2025-05-31','Active','{"plan":"Premium"}'),
(305,5,'2025-01-01','2025-04-30','Active','{"plan":"Standard"}'),
(306,6,'2024-08-01','2024-11-30','Expired','{"plan":"Basic"}'),
(307,7,'2025-01-10','2025-04-10','Active','{"plan":"Premium"}'),
(308,8,'2025-02-01','2025-07-31','Active','{"plan":"Standard"}'),
(309,9,'2025-01-05','2025-06-30','Active','{"plan":"Premium"}'),
(310,10,'2024-09-01','2024-12-31','Expired','{"plan":"Basic"}');

INSERT INTO Payments VALUES
(401,1,1999,'2025-01-01','UPI','{"status":"Success"}'),
(402,2,1499,'2025-01-15','Card','{"status":"Success"}'),
(403,3,999,'2024-10-01','UPI','{"status":"Success"}'),
(404,4,1999,'2025-02-01','Card','{"status":"Success"}'),
(405,5,1499,'2025-01-01','UPI','{"status":"Success"}'),
(406,6,999,'2024-08-01','Cash','{"status":"Success"}'),
(407,7,1999,'2025-01-10','UPI','{"status":"Success"}'),
(408,8,1499,'2025-02-01','Card','{"status":"Success"}'),
(409,9,1999,'2025-01-05','UPI','{"status":"Success"}'),
(410,10,999,'2024-09-01','Cash','{"status":"Success"}');

INSERT INTO Attendance_Log VALUES
(601,1,'{"month":"Jan","days":20}'),
(602,2,'{"month":"Jan","days":18}'),
(603,3,'{"month":"Dec","days":15}'),
(604,4,'{"month":"Feb","days":22}'),
(605,5,'{"month":"Jan","days":19}'),
(606,6,'{"month":"Nov","days":10}'),
(607,7,'{"month":"Jan","days":21}'),
(608,8,'{"month":"Feb","days":20}'),
(609,9,'{"month":"Jan","days":23}'),
(610,10,'{"month":"Dec","days":12}');


INSERT INTO Member_Progress VALUES
(501,1,'{"weight":72,"calories":8500}'),
(502,2,'{"weight":65,"calories":7200}'),
(503,3,'{"weight":78,"calories":6900}'),
(504,4,'{"weight":60,"calories":8000}'),
(505,5,'{"weight":82,"calories":7500}'),
(506,6,'{"weight":70,"calories":5000}'),
(507,7,'{"weight":76,"calories":8300}'),
(508,8,'{"weight":58,"calories":8100}'),
(509,9,'{"weight":74,"calories":8600}'),
(510,10,'{"weight":68,"calories":6400}');

-- Structure of table
DESC Trainer_Profile;
DESC Members;
DESC Subscriptions;
DESC Payments;
DESC Attendance_Log;

-- data
SELECT * FROM Trainer_Profile;
SELECT * FROM Members;
SELECT * FROM Subscriptions;
SELECT * FROM Payments;
SELECT * FROM Attendance_Log;
SELECT * FROM Member_Progress;

-- table wise count
SELECT 'Trainer_Profile' AS table_name , COUNT(*) FROM Trainer_Profile
UNION
SELECT 'Members', COUNT(*) FROM Members
UNION
SELECT 'Subscriptions', COUNT(*) FROM Subscriptions
UNION
SELECT 'Payments', COUNT(*) FROM Payments
UNION
SELECT 'Attendance_Log', COUNT(*) FROM Attendance_Log
UNION
SELECT 'Member_Progress', COUNT(*) FROM Member_Progress;


ALTER TABLE Members
ADD phone VARCHAR(15);
SELECT * FROM Members;

-- rename table
ALTER TABLE Trainer_Profile

show tables;
-- Member ka status update
UPDATE Members
SET status = 'Expired'
WHERE member_id = 1;
select *from Members;


SELECT COUNT(*) AS total_members
FROM Members;

-- age analysis
SELECT 
MIN(age) AS min_age,
MAX(age) AS max_age,
AVG(age) AS avg_age
FROM Members;
ALTER TABLE Attendance_Log
ADD days_present INT;
UPDATE Attendance_Log
SET days_present = 20
WHERE log_id = 1;
INSERT INTO Attendance_Log (log_id, member_id, days_present)
VALUES
(701, 1, 20),
(702, 2, 18),
(703, 3, 15);

-- Attendance Analysis
SELECT 
AVG(days_present) AS avg_attendance
FROM Attendance_Log;

-- Extract specific fields from JSON
SELECT
  trainer_profile->>'$.trainer_name' AS trainer_name,
  trainer_profile->>'$.specialization' AS specialization,
  trainer_profile->>'$.experience' AS experience_years,
  trainer_profile->>'$.rating' AS rating
FROM Trainers;


-- Objective-6 (Automation using Trigger)
CREATE TABLE Member_Log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    action VARCHAR(50),
    log_time TIMESTAMP
);
DELIMITER //

CREATE TRIGGER trg_after_insert_member
AFTER INSERT ON Members
FOR EACH ROW
BEGIN
    INSERT INTO Member_Log (member_id, action, log_time)
    VALUES (NEW.member_id, 'New Member Added', NOW());
END$$

DELIMITER ;



SELECT * FROM Member_Log;

-- This project efficiently manages gym data using SQL, supports analysis through queries, and automates operations using triggers.”