create database bank;
use bank;

create table customer (cid int unique, cname varchar(20) not null, loc varchar(20) not null, sex varchar(1) not null, dob time not null, primary key(cid));
create table bank_brn (bcode int unique, bloc varchar(20) not null, bsate varchar(20) not null, primary key(bcode));
create table deposite (dacno int unique, dtype varchar(5) not null, ddate time not null, damt int not null, primary key(dacno));
create table loan (lacno int unique, ltype varchar(5) not null, ldate date not null, lamt int not null, primary key(lacno));
create table account_in (bcode int unique, cid int not null, primary key(bcode));
create table depositor (cid int unique, dacno int not null, primary key(cid));
create table borrower (cid int unique, lacno int not null, primary key(cid));

show tables;

describe customer;
describe bank_brn;
describe deposite;
describe loan;
describe account_in;
describe depositor;
describe borrower;

drop table customer;
drop table bank_brn;
drop table deposite;
drop table loan;
drop table account_in;
drop table depositor;
drop table borrower;
 
 
