use cds16 ;

select * from Advertising;

alter table Advertising
add total_cost  varchar(500);

alter table Advertising
drop column total_cost;
use classicmodels;

select *from customers;

select contactLastName, contactfirstName, country from customers;

select * from employees;

select lastName, firstName, email from employees;

select * from offices;

select city , phone, country from offices;

select * from orderdetails ;

select orderNumber, orderLineNumber from orderdetails;

select * from orders;

select orderNumber shippeDate, status, customerNumber from orders;

select * from payments;

select customerNumber , amount from payments;

select *from productlines ;

select productLine, htmlDescription from productLines;

select * from products;

select productVendor from products;

select distinct (country)
from customers;

select contactLastName, contactfirstName, country
from customers
where country ='USA';

select contactLastName, contactfirstName, country, creditLimit
from customers
where creditLimit >100000;

select contactLastName, contactfirstName, country, creditLimit
from customers
where creditLimit >80000 and country = 'USA';

select contactLastName, contactfirstName, country, creditLimit
from customers
where creditLimit >100000 or country ='France';

select contactLastName, contactfirstName, country, creditLimit
from customers
where country !='USA';

select contactLastName, contactfirstName, creditLimit
from customers
order by creditLimit  desc; 

select contactLastName, contactfirstName, creditLimit, country, state
from customers
where country = 'Italy'
order by creditLimit desc; 

select * from customers 
where state is null;

select contactLastName, contactfirstName, creditLimit
from customers
order by contactLastName desc ; 

select creditLimit, contactFirstname, contactLastname, country
from customers
where country ='UK'
order by creditLimit desc
limit 5;
