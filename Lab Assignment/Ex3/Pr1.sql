create database collage;
show databases;
use collage;

create table Student (sid int unique, sname varchar(20) not null, sex varchar(1) not null , dob date not null, dno int, grade varchar(1) not null, primary key(sid));
create table Depertment (dno int unique, dname varchar(20) not null, primary key(dno));
create table Faculty(f_id int unique, fname varchar(20) not null, designation varchar(10) not null, salary int not null, dno int not null, primary key(f_id), check(salary < 100000));
create table course(cid int unique, cname varchar(20), credits varchar(20) not null, dno int not null, primary key(cid));
create table register(sid int unique, cid int not null, sem varchar(5) not null, primary key(sid));
create table teaching(f_id int unique, cid int not null, sem varchar(5) not null, primary key(f_id));
create table hostel(hid int unique, hname varchar(20) not null, seats int not null,primary key(hid));

show tables;

-- Q . Insert at least 5 tuples into each table

-- Student Table
insert into Student(sid, sname, sex, dob, dno, grade) values (1, "Arka", "M", "1999-08-04", 1, "A");
insert into Student(sid, sname, sex, dob, dno, grade) values (2, "Vikas", "M", "2000-05-14", 2, "F");
insert into Student(sid, sname, sex, dob, dno, grade) values (3, "Bhaswati", "F", "2012-08-16", 3, "B");
insert into Student(sid, sname, sex, dob, dno, grade) values (4, "Pallavi", "F", "2001-01-06", 2, "A");
insert into Student(sid, sname, sex, dob, dno, grade) values (5, "Raj", "M", "1999-08-08", 5, "C");

select * from Student;

-- Depertment Table
insert into Depertment(dno, dname) values (1,"CSE");
insert into Depertment(dno, dname) values (2,"IT");
insert into Depertment(dno, dname) values (3,"ECE");
insert into Depertment(dno, dname) values (4,"MECH");
insert into Depertment(dno, dname) values (5,"CIVIL");

select * from Depertment;

-- Faculty Table
insert into Faculty(f_id, fname, designation , salary , dno) values (1, "Palash", "MA", 10000, 1);
insert into Faculty(f_id, fname, designation , salary , dno) values (2, "Naba", "BA", 20000, 2);
insert into Faculty(f_id, fname, designation , salary , dno) values (3, "Aparajita", "MSC", 18000, 3);
insert into Faculty(f_id, fname, designation , salary , dno) values (4, "Bhashkar", "BSC", 15000, 4);
insert into Faculty(f_id, fname, designation , salary , dno) values (5, "Nabanita", "PHD", 50000, 5);

select * from Faculty;

-- Course Table
insert into course(cid, cname, credits, dno) values(1,"Python",10,1);
insert into course(cid, cname, credits, dno) values(2,"Java",10,2);
insert into course(cid, cname, credits, dno) values(3,"C",2,3);
insert into course(cid, cname, credits, dno) values(4,"C++",2,4);
insert into course(cid, cname, credits, dno) values(5,"C#",2,5);

select * from course;

-- register table
insert into register(sid, cid, sem) values(1,1,"1st");
insert into register(sid, cid, sem) values(2,2,"2nd");
insert into register(sid, cid, sem) values(3,3,"3rd");
insert into register(sid, cid, sem) values(4,4,"4th");
insert into register(sid, cid, sem) values(5,5,"5th");

select * from register;

-- Teaching Table 
insert into teaching(f_id, cid, sem) values(1,1,"1st");
insert into teaching(f_id, cid, sem) values(2,2,"2nd");
insert into teaching(f_id, cid, sem) values(3,3,"3rd");
insert into teaching(f_id, cid, sem) values(4,4,"4th");
insert into teaching(f_id, cid, sem) values(5,5,"5th");

select * from teaching;

-- Hostel Table 
insert into hostel(hid, hname, seats) values(1,"RCC 1",20);
insert into hostel(hid, hname, seats) values(2,"RCC 2",20);
insert into hostel(hid, hname, seats) values(3,"RCC 3",20);
insert into hostel(hid, hname, seats) values(4,"RCC 4",20);
insert into hostel(hid, hname, seats) values(5,"RCC 5",20);

select * from hostel;

-- List the student details in accesending order of DOB.
select * from Student order by dob;

-- Display the details of sudent from computer depertment
select * from Student ,Depertment where Student.dno = Depertment.dno and dname = 'CSE';

-- Display the list of the faculties in order of sallary  
select * from Faculty order by salary desc;

-- List the total no of student in each depertment  
select dname, count(s.dno) as no_student from Depertment d, Student s where s.dno = d.dno group by s.dno;

-- Display the total number of faculties in each department with salary greater than 25000
select dname, count(f.dno) as no_faculty from Depertment d, Faculty f where d.dno = f.dno and f.salary>25000 group by f.dno;
