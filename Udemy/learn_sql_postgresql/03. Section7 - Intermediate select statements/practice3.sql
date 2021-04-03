select name, weight, productnumber from production.product p order by weight;

select * from purchasing.productvendor p where productid = 407 order by averageleadtime;

select * from sales.salesorderdetail s where productid = 799 order by orderqty desc;

select max(discountpct) from sales.specialoffer s;

select min(sickleavehours) from humanresources.employee e;

select max(rejectedqty) from purchasing.purchaseorderdetail p;

select avg(rate) as avgrate from humanresources.employeepayhistory e 

select avg(standardcost) as avg_std_cost from production.productcosthistory p where productid = 738;

select sum(scrappedqty) from production.workorder where productid = 529;

select name from purchasing.vendor where name like 'G%';

select name from purchasing.vendor where name like '%Bike%';

select firstname, lastname from person.person where firstname like '_t%';

select * from person.emailaddress e limit 20;

select * from production.productcategory p limit 2;

select count(*) from production.product where weight is null;

select count(*) from person.person where additionalcontactinfo is not null;


