use sakila;

select * from actor;
select first_name, last_name from actor;

select first_name , last_name from actor
where last_name like "%a%";

select first_name , last_name from actor
where last_name like "s%n";

select first_name , last_name from actor
where last_name like "a%";

select first_name , last_name from actor
where last_name like "a%d";

select first_name , last_name from actor
where last_name
order by first_name;

select count(first_name) 
from actor;

select count(first_name) 
from actor;


