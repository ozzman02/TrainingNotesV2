/* shorthand for grouping sets */
select c.companyname, categoryname, productname, sum(od.unitprice*od.quantity)
from customers as c
natural join orders 
natural join order_details as od 
join products using (productid)
join categories using (categoryid)
group by rollup (companyname, categoryname, productname)
order by companyname, categoryname, productname;

select companyname, categoryname, productname, sum(od.unitprice*od.quantity)
from customers
natural join orders
natural join order_details as od 
join products using (productid)
join categories using (categoryid)
group by cube (companyname, categoryname, productname)
order by companyname, categoryname, productname;

SELECT s.companyname AS supplier, c.companyname AS buyer,productname, SUM(od.unitprice*quantity)
FROM suppliers AS s
JOIN products USING (supplierid)
JOIN order_details AS od USING (productid)
JOIN orders USING (orderid)
JOIN customers AS c USING (customerid)
GROUP BY CUBE(supplier, buyer, productname)
order by supplier nulls first, buyer nulls first, productname nulls first;