create database bank;
use bank;

create table customer (cid int unique, cname varchar(20) not null, loc varchar(20) not null, sex varchar(1) not null, dob date not null, primary key(cid));
create table bank_brn (bcode int unique, bloc varchar(20) not null, bsate varchar(20) not null, primary key(bcode));
create table deposite (dacno int unique, dtype varchar(10) not null, ddate date not null, damt int not null, primary key(dacno));
create table loan (lacno int unique, ltype varchar(20) not null, ldate date not null, lamt int not null, primary key(lacno));
create table account_in (bcode int, cid int not null, primary key(bcode));
create table depositor (cid int, dacno int not null, primary key(cid));
create table borrower (cid int, lacno int not null, primary key(cid));


-- Customer Table 
insert into customer (cid, cname, loc, sex, dob) values(1,"vikas","Guwahati","M","2000-01-02");
insert into customer (cid, cname, loc, sex, dob) values(2,"arka","Calangute","M","1999-08-04");
insert into customer (cid, cname, loc, sex, dob) values(3,"nayan","Kolkata","M","2001-06-02");
insert into customer (cid, cname, loc, sex, dob) values(4,"gunjan","Mumbai","M","2012-11-20");
insert into customer (cid, cname, loc, sex, dob) values(5,"kailash","Mumbai","M","2013-12-25");

select * from customer;

-- bank branch table
insert into bank_brn ( bcode, bloc, bsate) values (1, "Guwahati", "Assam");
insert into bank_brn ( bcode, bloc, bsate) values (2, "Calangute", "Goa");
insert into bank_brn ( bcode, bloc, bsate) values (3, "Nicco Park", "Kolkata");
insert into bank_brn ( bcode, bloc, bsate) values (4, "Mumbai", "Maharastra");
insert into bank_brn ( bcode, bloc, bsate) values (5, "Barpeta", "Assam");

select * from bank_brn;

-- deposite table
insert into deposite(dacno , dtype , ddate , damt) values ( 121, "fixed", "2021-01-02", 1200);
insert into deposite(dacno , dtype , ddate , damt) values ( 122, "fixed", "2012-11-02", 1500);
insert into deposite(dacno , dtype , ddate , damt) values ( 123, "recurring", "2013-10-12", 1800);
insert into deposite(dacno , dtype , ddate , damt) values ( 124, "fixed", "2008-07-15", 20000);
insert into deposite(dacno , dtype , ddate , damt) values ( 125, "fixed", "2021-01-02", 1500);

select * from deposite;

-- loan table
insert into loan (lacno , ltype, ldate, lamt) values ( 450, "Credit Card", "2021-07-11",12000);
insert into loan (lacno , ltype, ldate, lamt) values ( 451, "Personal Loan", "2021-08-11",12000);
insert into loan (lacno , ltype, ldate, lamt) values ( 452, "Parsonel Loan", "2008-11-15",10000);
insert into loan (lacno , ltype, ldate, lamt) values ( 453, "Small Business Loan", "2015-06-01",20000);
insert into loan (lacno , ltype, ldate, lamt) values ( 454, "Home Equity", "2007-05-20",50000);

select * from loan;

-- account_in table
insert into account_in (bcode, cid) values (1,1);
insert into account_in (bcode, cid) values (2,2);
insert into account_in (bcode, cid) values (3,1);
insert into account_in (bcode, cid) values (4,4);
insert into account_in (bcode, cid) values (5,5);

select * from account_in;

-- depositor
insert into depositor ( cid, dacno) values (1, 121);
insert into depositor ( cid, dacno) values (2, 122);
insert into depositor ( cid, dacno) values (3, 123);
insert into depositor ( cid, dacno) values (4, 124);
insert into depositor ( cid, dacno) values (5, 125);

select * from depositor;

-- borrower
insert into borrower(cid, lacno) values(1,450);
insert into borrower(cid, lacno) values(2,451);
insert into borrower(cid, lacno) values(3,452);
insert into borrower(cid, lacno) values(4,453);
insert into borrower(cid, lacno) values(5,454);

select * from borrower;

-- Display the branch details
select * from bank_brn;

-- List the customer of mumbai city
select * from customer where loc = "Mumbai";

-- List the male customers of kolkata
select * from customer where loc = "Kolkata" and sex = "M";  

-- List the state that have more than one branch
select bsate state , count(bsate) num from bank_brn bank group by bsate having count(bank.bsate)>1;

-- List the deposit schemes provided by the bank to the customers
select * from deposite;

-- Delete the entire content of any table
truncate borrower; 