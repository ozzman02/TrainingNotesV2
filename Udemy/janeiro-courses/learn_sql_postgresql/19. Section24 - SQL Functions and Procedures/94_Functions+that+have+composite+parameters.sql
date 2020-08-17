/*
	You can create a function that takes a table name as a parameter.

	This is treated as a composite type that is a single row of the field with 
	all the column names in order.

	How to use the function?

		Best to use name.* to keep from confusing the compiler. You can just use the 
		name but it is deprecated.
*/

/* build a function that takes a product and price increase percent and returns the new price */
CREATE OR REPLACE FUNCTION new_price(products, increase_percent numeric)
RETURNS double precision AS $$
	SELECT $1.unitprice * increase_percent/100
$$ LANGUAGE SQL

SELECT productname, unitprice, new_price(products.*, 110)
FROM products;

CREATE OR REPLACE FUNCTION full_name(employees) RETURNS varchar(62) AS $$
	SELECT $1.title || ' ' || $1.firstname || ' ' || $1.lastname
$$ LANGUAGE SQL;

SELECT full_name(employees.*),city,country
FROM employees;
