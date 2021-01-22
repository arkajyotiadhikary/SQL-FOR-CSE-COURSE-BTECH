create database collage;
show databases;
use collage;

create table Student (sid int unique, sname varchar(20) not null, sex varchar(1) not null , dob date not null, dno int unique, primary key(sid));
create table Depertment (dno int unique, dname varchar(20) not null, primary key(dno));
create table Faculty(f_id int unique, fname varchar(20) not null, designation varchar(10) not null, salary int not null, dno int not null, primary key(f_id), check(salary < 10000));
create table course(cid int unique, cname varchar(20), credits varchar(20) not null, dno int not null, primary key(cid));
create table register(sid int unique, cid int not null, sem varchar(5) not null, primary key(sid));
create table teaching(f_id int unique, cid int not null, sem varchar(5) not null, primary key(f_id));
create table hostel(hid int unique, hname varchar(20) not null, seats int not null,primary key(hid));

show tables;

alter table Student 
add grade varchar(1);