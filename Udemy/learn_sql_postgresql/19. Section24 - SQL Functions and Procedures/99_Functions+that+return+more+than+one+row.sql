/* Return all products that have total sales greater than some input value */
CREATE OR REPLACE FUNCTION sold_more_than(total_sales real)
RETURNS SETOF products AS $$
 SELECT * FROM products
 WHERE productid IN (
	 SELECT productid FROM
 	 (SELECT SUM(quantity*unitprice),productid
	 FROM order_details
	 GROUP BY productid
	 HAVING SUM(quantity*unitprice) > total_sales) as qualified_products
 )
$$ LANGUAGE SQL;

SELECT productname, productid, supplierid
FROM sold_more_than(25000);

/* Returns all suppliers that have products that need to be ordered 
   (units on hand plus units ordered is less than reorder level)
*/
CREATE OR REPLACE FUNCTION suppliers_to_reorder_from()
RETURNS SETOF suppliers AS $$
  SELECT * FROM suppliers
  WHERE supplierid IN (
	 SELECT supplierid FROM products
	  WHERE unitsinstock + unitsonorder < reorderlevel
  )
$$ LANGUAGE SQL;

SELECT * FROM suppliers_to_reorder_from()

/* 
	Another way to return a set

		Syntax returns table(columns)
		
		create function name(params) returns table(params)

		must list out all the return parameters
*/
create or replace function next_birthday()
returns table (birthday date, firstname varchar(10), lastname varchar(20), hiredate date) as $$
	select (birthdate + interval '1 year' * (extract(year from age(birthdate))+1))::date, 
	firstname, lastname, hiredate
	from employees;
$$ language sql

select * from next_birthday();


/* Create a function that returns the excess inventory, productid and productname
	from products table based on an input parameter of percent of inventory threshold.
	Use RETURNS TABLE syntax
*/
create or replace function excess_inventory_level(percent numeric)
returns table(excess int, productid smallint, productname varchar(40)) as $$
	select ceil((unitsinstock + unitsonorder) - (reorderlevel * percent / 100))::int,
	productid, productname 
	from products
	where (unitsinstock + unitsonorder) - (reorderlevel*percent/100) > 0;
$$ language sql

select * from excess_inventory_level(200) 
