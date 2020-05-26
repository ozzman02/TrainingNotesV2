select * from actor a ;

select * from film f ;

select * from staff s ;

select address, district from address a ;

select title, description from film f ;

select city, country_id from city c ;

select distinct last_name from actor a ;

select distinct inventory_id from rental r ;

select count(*) from film f2 ;

select count(*) from category c2 ;

select count(distinct first_name) from actor a ;

select rental_id, return_date, rental_date, return_date - rental_date as "difference" from rental r ;



