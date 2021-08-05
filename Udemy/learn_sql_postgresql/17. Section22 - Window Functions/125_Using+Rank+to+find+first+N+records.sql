/*
	How do I join two tables and return the top 2 results from the 2nd table
	for each row in first table?
*/

/* Top two most valuable items ordered for each orders records */
SELECT * FROM
(SELECT orders.orderid, productid, unitprice, quantity,
 	rank() OVER (PARTITION BY order_details.orderid ORDER BY (quantity*unitprice) DESC) AS rank_amount
FROM orders
NATURAL JOIN order_details) as ranked
WHERE rank_amount <=2;

/*
	Find the 3 least expensive products from each supplier. 
	Return supplier name, product name and price
*/

SELECT companyname,productname,unitprice FROM
(SELECT companyname,productname,unitprice,
rank() OVER (PARTITION BY products.supplierid ORDER BY unitprice ASC) AS price_rank
FROM suppliers
NATURAL JOIN products) as ranked_products
WHERE price_rank <=3;
