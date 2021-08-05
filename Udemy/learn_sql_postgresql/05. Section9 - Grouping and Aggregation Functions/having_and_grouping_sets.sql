/* where filters before grouping */ 
select p.productname, date_part('year', o.orderdate) as "year", round(sum(od.quantity * od.unitprice)) as "value"
from products p 
join order_details od using (productid)
join orders o using (orderid)
where date_part('year', o.orderdate) in (1997)
group by p.productname, date_part('year', o.orderdate)
order by value desc;

/* having filters after grouping */
select p.productname, date_part('year', o.orderdate) as "year", round(sum(od.quantity * od.unitprice)) as "value"
from products p 
join order_details od using (productid)
join orders o using (orderid)
group by p.productname, date_part('year', o.orderdate)
having date_part('year', o.orderdate) in (1997)
order by value desc;

select c.contactname, round(sum(od.quantity * od.unitprice)) as "value"
from products p 
join order_details od using (productid)
join orders o using (orderid)
join customers c using (customerid)
group by c.contactname 
having sum(od.quantity * od.unitprice) > 5000
order by value desc;

select c.companyname, round(sum(od.quantity * od.unitprice)) as "value"
from products p 
join order_details od using (productid)
join orders o using (orderid)
join customers c using (customerid)
group by c.companyname
having sum(od.quantity * od.unitprice) > 5000
order by value desc;

select c.companyname, round(sum(od.quantity * od.unitprice)) as "value"
from products p 
join order_details od using (productid)
join orders o using (orderid)
join customers c using (customerid)
where date_part('month', o.orderdate) between 1 and 6 
and date_part('year', o.orderdate) = 1997
group by c.companyname
having sum(od.quantity * od.unitprice) > 5000
order by value desc;

/* grouping set */
select categoryname, productname, sum(od.unitprice*quantity)
from categories c 
natural join products 
natural join order_details od
group by grouping sets ((categoryname), (categoryname, productname))
order by categoryname, productname;

select c.companyname as "buyer", s.companyname as "supplier", sum(od.quantity * od.unitprice) as "total_sales"
from customers c
join orders o using(customerid)
join order_details od using(orderid)
join products p using(productid)
join suppliers s using(supplierid)
group by c.companyname, s.companyname
order by buyer, supplier;

select c.companyname as "buyer", s.companyname as "supplier", sum(od.quantity * od.unitprice) as "total_sales"
from customers c
join orders o using(customerid)
join order_details od using(orderid)
join products p using(productid)
join suppliers s using(supplierid)
group by grouping sets ((c.companyname), (c.companyname, s.companyname))
order by buyer, supplier;

/* we can use alias in grouping sets */
select c.companyname as "buyer", s.companyname as "supplier", sum(od.quantity * od.unitprice) as "total_sales"
from customers c
join orders o using(customerid)
join order_details od using(orderid)
join products p using(productid)
join suppliers s using(supplierid)
group by grouping sets ((buyer), (buyer, supplier))
order by buyer, supplier;

select c.companyname, cat.categoryname, sum(od.quantity * od.unitprice) as "total_sales"
from customers c
join orders o on c.customerid = o.customerid 
join order_details od on o.orderid = od.orderid 
join products p on od.productid = p.productid 
join categories cat on p.categoryid = cat.categoryid 
join suppliers s on p.supplierid = s.supplierid 
group by grouping sets ((c.companyname), (c.companyname, cat.categoryname))
order by c.companyname, cat.categoryname nulls first;
