use cds16;

create table Customer
( customer_id varchar(20),
F_Name varchar (20),
L_Name varchar (20),
Age int,
Country varchar (30)
);
show tables;
insert into customer 
values 
       ('1','John','Doe',32, 'USA' ),
       ('2','Robert', 'Luna',22,'USA'),
       ('3','David', 'Robinson', 22, 'UK'),
       ('4', 'John','David',25,'UK'),
       ('5','Betty', 'Doe',28, 'UAE') ;
 
 
 select * from customer;

#2
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

select * from order_;

-- Fetch the customer details whose age is greater than average age;
-- using Subquery
select avg(age)
from customer;


select F_name, l_name, Age
from customer
where age > (select avg(age) from customer) ;

select max(amount)
from order_;

select * from customer
where customer_id =
(select order_id from order_
where amount =(select max(amount)
from order_));

select avg(amount)
 from order_;

select * from customer
where customer_id in (select order_id from order_

where amount > (select avg(amount) from order_)) ;

select * from customer 
where age =(select min(age) from customer);

select * from order_;

create table empl_1(
      empid varchar (50),
      ename varchar (50),
      salary int ,
      depid varchar (50)
      );
      
insert into empl_1
values ('E1', 'John', 45000, 'D1'),
       ('E2', 'Mary', 60000,'D2'),
       ('E3', 'Steve', 73000, 'D4'),
       ('E5','Helen', 86000, 'D4'),
       ('E5','Joe',35000,'D7');
       
select * from empl_1;

update empl_1
set depid = 'D3'
where empid='E3';


create table department
(      depid varchar (20),
dname varchar(50)
);


select * from department ;

insert into department 
values ('D1','IT'),
       ('D2','HR'),
       ('D3','Admin'),
       ('D4','Finance'),
       ('D5','Sales');
       
select * from department ;   


select * from empl_1
where depid =(
select depid from department
where dname ='finance');  


 select * from department ;  
select * from empl_1;


-- joins
-- inner join
select *
from empl_1 as e
inner join department as d
on e.depid=d.depid; 

select *
from empl_1 as e
left join department as d
on d.depid=e.depid; 

select *
from empl_1 as e
right join department as d
on e.depid = d.depid;


select e.empid,e.ename,e.salary,d.depid,d.dname 
from empl_1 as e 
left join department as d
on e.depid = d.depid
union
select e.empid,e.ename,e.salary,d.depid,d.dname 
from empl_1 as e 
right join department as d
on e.depid = d.depid;

use cds16;
-- left exclusive join

select * 
from empl_1 as e
left join department as d
on e.depid = d.depid
where d.depid is  null;

-- Right Exclusive join 
select * 
from empl_1 as e
right join department as d
on e.depid = d.depid
where e.depid is  null;


-- Full Exclusive join

select * 
from empl_1 as e
left join department as d
on e.depid = d.depid
where d.depid is  null

union

select * 
from empl_1 as e
right join department as d
on e.depid = d.depid
where e.depid is  null;