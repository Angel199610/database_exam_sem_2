-- -- Create Course table
-- CREATE TABLE Course (
--     	Cno VARCHAR(5) PRIMARY KEY,
--     	Cname VARCHAR(50),
--     	Cduration_years INT );

-- Insert data into Course table
INSERT INTO Course (Cno, Cname, Cduration_years) VALUES
('C1', 'HNDA', 4),
('C2', 'HNDIT', 2),
('C3', 'HNDM', 3),
('C4', 'HNDE', 2);

-- Create Students table
CREATE TABLE Students (
    Sno VARCHAR(5) PRIMARY KEY,
    Sname VARCHAR(50),
    SGPA DECIMAL(4, 2),
    Scity VARCHAR(50),
    Cno VARCHAR(5),
    FOREIGN KEY (Cno) REFERENCES Course(Cno)
);

-- Insert data into Students table
INSERT INTO Students (Sno, Sname, SGPA, Scity, Cno) VALUES
('S1', 'Saman', 2.60, 'Kegalle', 'C1'),
('S2', 'Kamal', 2.45, 'Kandy', 'C2'),
('S3', 'Joe', 3.20, 'Galle', 'C3'),
('S4', 'Ruwan', 4.00, 'Kandy', 'C1'),
('S5', 'Asela', 3.50, 'Jaffna', 'C4'),
('S6', 'Asanka', 2.88, 'Galle', 'C2'),
('S7', 'Wasana', 2.75, 'Colombo', 'C3'),
('S8', 'Dilini', 3.35, 'Kandy', 'C1'),
('S9', 'Auran', 2.76, 'Galle', 'C4'),
('S10', 'Gayani', 3.00, 'Jaffna', 'C4');


--- printing all the student's name and GPA
-- SELECT Sname, SGPA FROM Students;

-- printing name of student with SGPA>3.00
-- SELECT Sname FROM Students WHERE SGPA > 3.00;

-- displaying Cno and number of students from each course
-- SELECT Cno, COUNT(*) AS num_students 
-- FROM Students 
-- GROUP BY Cno;


-- displaying all the information 
-- SELECT Students.Sname, Students.SGPA, Course.Cname 
-- FROM Students 
-- INNER JOIN Course ON Students.Cno = Course.Cno;



-- sorting the student table with ascending order by SGPA
SELECT * FROM Students ORDER BY SGPA ASC;













Role of Database Administrators:

-- Database Administrators are responsible for managing and maintaining the organization's databases.
-- They ensure the security, integrity, and performance of databases.
-- DBAs design, implement, and maintain database systems, including backup and recovery procedures.
-- They handle database optimization, tuning, and troubleshooting to ensure efficient operation.
-- DBAs may also be involved in data modeling, capacity planning, and database software upgrades.
-- They collaborate with developers, system administrators.