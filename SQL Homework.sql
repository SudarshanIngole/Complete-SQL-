use cds16;

create table Customer
( customer_id varchar(20),
F_Name varchar (20),
L_Name varchar (20),
Age int,
Country varchar (30)
);

insert into customer 
values 
       ('1','John','Doe',32, 'USA' ),
       ('2','Robert', 'Luna',22,'USA'),
       ('3','David', 'Robinson', 22, 'UK'),
       ('4', 'JOhn','david',25,'UK'),
       ('5','Betty', 'Doe',28, 'UAE') ;
 
 select * from customer;
 
 
 create table Order_
 ( Order_Id varchar (20),
   amount int,
   customer_id varchar (50)
   );

insert into Order_
values
( '1', 200,'4'),
('2',500,'10'),
('3',300,'3'),
('4',800,'1'),
('5',150,'2')
;
   
 select * from Order_
 