CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR(30);

ALTER TABLE Student ADD Semester VARCHAR(10);

ALTER TABLE Student CHANGE Phone MobileNo VARCHAR(15);

DROP TABLE Course;

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) VALUES 
(101, 'Rahul', 'CSE', 21, '9876543210', 'Delhi', '4th'),
(102, 'Sneha', 'ECE', 19, '9876543211', 'Mumbai', '2nd'),
(103, 'Amit', 'CSE', 22, '9876543212', 'Bangalore', '6th'),
(105, 'Priya', 'IT', 20, '9876543213', 'Pune', '4th'),
(110, 'Faijan', 'CSE', 21, '9876543214', 'Patna', '4th');

SELECT * FROM Student;

SELECT RollNo, Name FROM Student;

SELECT * FROM Student WHERE Dept = 'CSE';

SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;

DELETE FROM Student;
