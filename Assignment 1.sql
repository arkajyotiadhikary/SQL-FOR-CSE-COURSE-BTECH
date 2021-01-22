-- create database arka;
-- show databases;

use arka; -- Database

-- Question Ans 1. 
create table Student (
_Roll_no int(3),
_Name varchar(10),
_Marks int(3),
_Dept varchar(2),
primary key(_Roll_no)
); 

select * from Student;

-- 

-- Question Ans 2
alter table Student
add _Age int(3) not null;

select * from Student;

--

-- Question Ans 3
alter table Student
modify column _Dept varchar(4);

select * from Student;

--

-- Question Ans 4
alter table Student
drop column _Age;

select * from Student;

-- 

-- Question Ans 5
insert into Student values(21 , 'Arka',100,'CSE');

select * from Student;

--

-- Question Ans 6 
truncate table Student;

select * from Student;

-- 

-- Question Ans 7
insert into Student values (1,'Manoj', 99 , 'IT');
insert into Student values (2,'Ramana', 98 , 'CSE');
insert into Student values (3,'Samy', 90 , 'IT');
insert into Student values (4,'Prabha', 99 , 'CSE');

select * from Student;

-- 