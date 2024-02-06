show databases;
create database Sudarshan;

 show tables;
 
 use cds16;
 create table employee_details(
     emp_id varchar(8),
     emp_name varchar(20),
     emp_designation varchar(20),
     emp_age int );
 
 create table Students(
	sname varchar(20),
     id varchar(10),
     gender varchar(10),
     age varchar(150),
     address varchar(100)
     );
 ALTER TABLE Students RENAME COLUMN sage TO age;
drop table Students;
insert into employee_details 
values 
( 'E1', 'ABC','XYZ', 22),
('101', 'Sudarshan', 'DataS',22),
('102', 'Ishika', 'DataS',22),
('103','Prasad','DataS',24)
;
 select * from employee_details;
 
 update employee_details 
 set emp_age =55
 where emp_id = 'E1';
 
 update employee_details
 set emp_city= 'Nagpur'
 where emp_id = 102;
 
  update employee_details
 set emp_name = 'Isha', emp_age=23
 where emp_id = 102;
 
 delete from employee_details where emp_id = 'E1';
 
 describe employee_details;
 
 alter table employee_details
 add emp_city varchar(20);
 
 alter table employee_details 
 drop column emp_city;
 
  alter table employee_details 
  modify emp_designation varchar(50);
  
   alter table employee_details 
   rename column  emp_age to Age;
   
    alter table employee_details 
    rename to Employee;
    
    select * from Employee;
    
    truncate Employee;