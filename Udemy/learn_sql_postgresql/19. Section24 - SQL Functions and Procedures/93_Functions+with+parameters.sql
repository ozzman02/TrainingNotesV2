/*
	Two ways to reference parameters

	1. By name: param1, param2
	2. By position: $1, $2


	Danger:

		If you name the parameter the same as column names the function might get confused.

		Ex: parameter named customerid and query uses customerid=customerid. Need a different name
		or use positional notation $1
*/

/* find the largest order amount given a specific customer */
CREATE OR REPLACE FUNCTION customer_largest_order(cid bpchar) RETURNS double precision AS $$
	SELECT MAX(order_total) FROM
	(SELECT SUM(quantity*unitprice) as order_total,orderid
	FROM order_details
	NATURAL JOIN orders
	WHERE customerid=cid
	GROUP BY orderid) as order_total;
$$ LANGUAGE SQL;

SELECT customer_largest_order('ANATR');

/* find the most ordered product of a particular customer by number of items ordered */
CREATE OR REPLACE FUNCTION most_ordered_product(customerid bpchar) RETURNS varchar(40) AS $$
	SELECT productname
	FROM products
	WHERE productid IN
	(SELECT productid FROM
	(SELECT SUM(quantity) as total_ordered, productid
	FROM order_details
	NATURAL JOIN orders
	WHERE customerid= $1
	GROUP BY productid
	ORDER BY total_ordered DESC
	LIMIT 1) as ordered_products);
$$ LANGUAGE SQL;

SELECT most_ordered_product('CACTU');

/* find the most ordered product of a particular customer by number of items ordered */
create or replace function most_ordered_product1(customerid bpchar) returns varchar(40) as $$
	select productname from
	(select orders.customerid, order_details.productid, products.productname, 
		sum(order_details.quantity) as total_qty
	from orders
	join order_details on orders.orderid = order_details.orderid
	join products on order_details.productid = products.productid 
	where orders.customerid = $1
	group by orders.customerid, order_details.productid, products.productname 
	order by orders.customerid, total_qty desc 
	limit 1) as total_orders;
$$ language sql
