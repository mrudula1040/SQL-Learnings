-- Day 6
-- DDL(Data Definition Language) | DML(Data MAnipulation Language)
drop database sprk_M;
CREATE DATABASE sprk_M;
USE sprk_M;

-- table 
CREATE TABLE students(
roll_no INT ,
first_name VARCHAR(100),
last_name VARCHAR(100),
gender VARCHAR(10),
percentage DECIMAL(10,2)
);

SELECT*FROM students;
DESCRIBE students;

-- insert values int student table
INSERT INTO students(roll_no,first_name,last_name,gender,percentage) values
(10,"Shubham" ,"Shinde","Male",53.55);

select * from student;

insert into student(roll_no,first_name,gender,percentage)
values 
(1,"Pranjali" ,"Female",93.55);

select * from student;

insert into 
student(first_name,last_name,gender,roll_no,percentage) 
values 
("Anjali" ,"More","Female",2,62.88);

select * from student;

insert into student values 
(3,"Yuvraj" ,"Jangir","Male",65.00),
(5,"Rohit" ,"Sharma","Male",88.85),
(6,"Abdul" ,"Memon","Male",18.85);
insert into student values 
(3,"Yuvraj" ,"Jangir","Male",65.00),
(5,"Rohit" ,"Sharma","Male",88.85),
(6,"Abdul" ,"Memon","Male",18.85);

select * from student;

alter table student
add addmission_date datetime;

select * from student;
