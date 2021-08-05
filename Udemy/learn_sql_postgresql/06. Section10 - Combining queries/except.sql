/* list of countries where we have customer but no suppliers */
select country from customers
except
select country from suppliers;

/* Number of customers that we have in a country without suppliers. 
   Need except all to get the duplicates
*/
select count(*) from 
(select country from customers
except all
select country from suppliers) as countries;

/* cities where we have a supplier but no customers */
select city from suppliers 
except
select city from customers;

/*  Number of customers in cities without suppliers.
    Need except all to get the duplicates.
*/
select count(*) from 
(select city from customers
except all
select city from suppliers) as cities;