/* customers with an order detail with more than 50 items in a single product */
select * from customers 
where customerid = any (
	select customerid from orders
	join order_details using (orderid)
	where quantity > 50
);

/* all suppliers that have had an order with 1 item */
select companyname from suppliers
where supplierid = any (
	select products.supplierid from order_details
	join products using (productid)
	where quantity = 1
)
order by companyname;

/* products which had order amounts that were higher than the average of all the products */
select distinct productname from products
join order_details using (productid)
where order_details.unitprice * order_details.quantity > all (
	select avg(order_details.unitprice * order_details.quantity)
	from order_details
	group by productid 
);

/* distinct customers that ordered more in one item than the average order amount per item of all customers */

select distinct companyname from customers
join orders using (customerid)
join order_details using (orderid)
where order_details.quantity * order_details.unitprice > all (
	select avg(order_details.quantity * order_details.unitprice)
	from order_details
	join orders using (orderid)
	group by orders.customerid
)
order by companyname;



