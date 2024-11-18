/*
	Used to return a single row of a table

	- Order of the fields must be same as the table
	- Each type must match the corresponding composite column

	How to access the results

	- Everything: select newest_hire();
	- Individual field: select newest_hire().lastname
	- Functional notation: select lastname(newest_hire())
*/

/* return the most recent hide*/
CREATE OR REPLACE FUNCTION newest_hire() RETURNS employees AS $$
	SELECT *
	FROM employees
	ORDER BY hiredate DESC
	LIMIT 1;
$$ LANGUAGE SQL;

SELECT newest_hire();

SELECT (newest_hire()).lastname;

SELECT lastname(newest_hire());

/* all records as a regular select statement */
SELECT (newest_hire()).*;

/* Function that returns the products row that has the most amount of money tied up
	in inventory (costs times units)*/
CREATE OR REPLACE FUNCTION highest_inventory() RETURNS products AS $$

	SELECT * FROM products
	ORDER BY (unitprice*unitsinstock) DESC
	LIMIT 1;

$$ LANGUAGE SQL;

SELECT (highest_inventory()).productname;
SELECT productname(highest_inventory());
