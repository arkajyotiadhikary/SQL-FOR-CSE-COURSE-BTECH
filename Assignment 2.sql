use arka; -- Database;

-- Question 1
create table STD (_ID int(2), _Name varchar(15), _Dept varchar(4), _Grade varchar(5), _Percentage int(4));  

-- Question 2
insert into STD values(1, 'Raghav', 'IT', 'S', 95);
insert into STD values(2, 'Kishor', 'CSE', 'S', 94);
insert into STD values(3, 'Kaveri', 'MECH', 'S', 92);
insert into STD values(4, 'Vasanta', 'CSE', 'A', 88);
insert into STD values(5, 'Ramu', 'MBA', 'A', 88);
insert into STD values(6, 'Radha', 'IT', 'F', 29);
insert into STD values(7, 'Sanjay', 'ECE', 'B', 98); 

-- Question 3
select * from STD;

-- Question 4
select _ID,_Name,_Grade from STD; 

-- Question 5
select * from STD where _ID = 1; 

-- Question 6
select _Percentage from STD;

-- Question 7
select distinct _Percentage from STD;

-- Question 8
select * from STD where _Percentage > 90;

-- Question 9
 select * from STD where _Percentage >= 50;
 
 -- Question 10
 select * from STD where _Percentage < 50;
 
 -- Question 11
 select * from STD where _Percentage >= 80 and _Dept = 'IT';
 
 -- Question 12
 select * from STD where _Percentage < 50 and _Grade = 'F';
 
 -- Question 13
 select * from STD where _Percentage = 95 or _Percentage = 9 or _Percentage = 88;
 
 -- Question 14
 select * from STD where _Percentage > 80 and _Percentage < 90;