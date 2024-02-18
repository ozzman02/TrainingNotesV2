/* max unit price */
create or replace function max_price() returns real as $$
	select max(unitprice) from products;
$$ language sql

select max_price();


/* write a function biggest_order that returns the largest order in terms of total money spent */
create or replace function biggest_order() returns double precision as $$
	select max(amount) from
	(select sum(unitprice*quantity) as amount, orderid
	from order_details
	group by orderid) as totals
$$ language sql 

select biggest_order();