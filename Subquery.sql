use cds16;
select*from customer;
select*from record;
-- Fetch the customer details whose age is greater than average age 

select*
from customer
where age > (select avg(age) 
from customer);

select*
from record
where amount = (select max(amount)
from record);
-- Get the customer details 
select*from customer
where customer_id=(select customer_id from record 
where amount = (select max(amount) from record));

select*from customer 
where customer_id in (select customer_id from record
where amount > (select avg(amount) from record));

select*from customer 
where age =  (select min(age) from customer);

use classicmodels;
describe payments;

select*from customers 
where customerNumber in (select customerNumber
from payments
where amount > (select avg(amount) from payments));

-- Fetch the customer details who purchase the vintage car 

select * from customers
where customernumber in (select customernumber from orders
where ordernumber in (select ordernumber from orderdetails
where productcode in (select productcode from products 
where productline = 'vintage cars')));

select*from employees;
select*from offices;
-- fetch the employee details who work in Boston
select*from employees
where officecode = (select officecode from offices
where city = 'Boston');

use cds16;

create table employees(
empid varchar(10),
ename varchar(20),
salary int,
depid varchar(10)
);

Insert into employees values 
('E1', 'John',4500,'D1'),
('E2', 'Mary',6000,'D2'),
('E3', 'Steve',73000,'D3'),
('E4', 'Helen',86000,'D4'),
('E5', 'Joe',3500,'D7');
select*from employees;

create table Department(
depid varchar(10),
dname varchar(20)
);

Insert into Department values
('D1','IT'),
('D2','HR'),
('D3','Admin'),
('D4','Finance'),
('D5','Sales');
select*from Department;

use sakila;
show tables;
select*from film;
select*from film_actor;
select*from actor;

select*from actor
where actor_id in(select actor_id from film_actor 
where film_id in (select film_id from film
where rating = 'PG'));

-- Joins 
-- Inner Join
select e.empid,e.ename,e.salary,d.depid,d.dname 
from employees as e inner join department as d
on e.depid = d.depid;
-- left join
select e.empid,e.ename,e.salary,d.depid,d.dname 
from employees as e left join department as d
on e.depid = d.depid;
-- Right join
select e.empid,e.ename,e.salary,d.depid,d.dname 
from employees as e right join department as d
on e.depid = d.depid;
-- Full outer Join
select e.empid,e.ename,e.salary,d.depid,d.dname 
from employees as e left join department as d
on e.depid = d.depid
union
select e.empid,e.ename,e.salary,d.depid,d.dname 
from employees as e right join department as d
on e.depid = d.depid;

use sakila;
select*from actor;
select*from film_actor;

select a.actor_id,f.film_id,a.first_name,a.last_name,f.actor_id
from actor as a inner join film_actor as f
on a.actor_id = f.actor_id;

select f.film_id,a.first_name,a.last_name,f.actor_id,a.actor_id
from actor as a right join film_actor as f
on a.actor_id = f.actor_id;

use classicmodels;
select*from products;


select productCode,productline,MSRP from products
where MSRP =(select max(MSRP) from products
where MSRP <(select max(MSRP) from products
where MSRP <(select max(MSRP) from products)));












