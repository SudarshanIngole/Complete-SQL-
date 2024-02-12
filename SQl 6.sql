use classicmodels;

select * from payments;

select * from customers
where customerNumber in  (select customerNumber
 from payments
 where amount > (select avg(amount) 
from payments));


select avg(amount) 
from payments;


-- fetch custmoer details who purchased vintage cars
select * from customers 
where customernumber in (
select customernumber from orders
where ordernumber in (select ordernumber from orderdetails 
where productcode in (
select productcode from products 
where productline ='vintage cars')));


select * from orderdetails;

select * from products;

select * from employees;
select * from offices;

select * from employees
where officecode =(
select officecode from offices
where city = 'Boston');

select officecode from offices
where city = 'Boston';


