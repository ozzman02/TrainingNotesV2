/* customers with an order in april 1997 */
select companyname from customers
where exists (
	select customerid 
	from orders 
	where orders.customerid = customers.customerid
	and orderdate between '1997-04-01' and '1997-04-30'
);

/* customers that did not have an order in april 1997 */
select companyname from customers
where not exists (
	select customerid 
	from orders 
	where orders.customerid = customers.customerid
	and orderdate between '1997-04-01' and '1997-04-30'
);


/* what products did not have an order in april 1997 */
select productname from products p
where not exists (
	select productid from order_details
	join orders using (orderid)
	where order_details.productid = p.productid 
	and orderdate between '1997-04-01' and '1997-04-30'
);

/* all suppliers with product that costs more than $200 */
select companyname from suppliers
where exists (
	select productid from products
	where products.supplierid = suppliers.supplierid 
	and unitprice > 200
);

/* find all the suppliers that dont have an order in december 1996 */
select companyname from suppliers
where not exists (
	select orderid from orders
	join order_details using (orderid)
	join products using (productid)
	where products.supplierid = suppliers.supplierid
	and orders.orderdate between '1996-12-01' and '1996-12-31'
);








