select companyname, orderid
from customers
left join orders on orders.customerid = customers.customerid
where orders.customerid is null;

select p.productname, od.orderid 
from products p
left join order_details od on p.productid = od.productid
order by p.productname;

select companyname, orderid
from orders 
right join customers on customers.customerid = orders.customerid 
where orderid is null;

select companyname, orderid 
from customers
full join orders on customers.customerid = orders.customerid;

select productname, categoryname
from products
full join categories on products.categoryid = categories.categoryid;


select c1.companyname as CustomerName1, c2.companyname as CustomerName2, c1.city
from customers c1
join customers c2 on c1.city = c2.city
order by c1.city;

select c1.companyname as CustomerName1, c2.companyname as CustomerName2, c1.city
from customers c1
join customers c2 on c1.city = c2.city
where c1.customerid <> c2.customerid 
order by c1.city;


select s1.supplierid, s1.companyname as CompanyName1, s2.supplierid, s2.companyName, s1.country
from suppliers s1
join suppliers s2 on s1.country = s2.country
where s1.supplierid <> s2.supplierid 
order by s1.country;


select * 
from orders
join order_details using(orderid)
join products using(productid);

select * from orders natural join order_details ;

select * from customers 
natural join orders 
natural join order_details;
