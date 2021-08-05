select p.firstname, p.middlename, p.lastname, pp.phonenumber, pnt.name
from person.person p
join person.personphone pp on p.businessentityid = pp.businessentityid 
join person.phonenumbertype pnt on pp.phonenumbertypeid = pnt.phonenumbertypeid; 

select pm.name, c.name, pd.description
from production.productmodel pm
join production.productmodelproductdescriptionculture pmdc on pm.productmodelid = pmdc.productmodelid
join production.productdescription pd on pmdc.productdescriptionid = pd.productdescriptionid 
join production.culture c on pmdc.cultureid = c.cultureid;

select p.name as product_name, pm.name as product_model_name, c.name as culture_name, pd.description
from production.product p 
join production.productmodel pm on p.productmodelid = pm.productmodelid 
join production.productmodelproductdescriptionculture pmdc on pm.productmodelid = pmdc.productmodelid
join production.productdescription pd on pmdc.productdescriptionid = pd.productdescriptionid 
join production.culture c on pmdc.cultureid = c.cultureid
order by product_model_name;

select p.name as product_name, pm.name as product_model_name, c.name as culture_name, pd.description
from production.product p 
join production.productmodel pm using(productmodelid) 
join production.productmodelproductdescriptionculture pmdc using(productmodelid)
join production.productdescription pd using(productdescriptionid)
join production.culture c using(cultureid)
order by pm.name;

select p.name as product_name, pr.rating
from production.product p
left join production.productreview pr using(productid)
order by pr.rating;

select p.name as product_name, pr.rating
from production.product p
join production.productreview pr using(productid)
order by pr.rating;

select * from production.product p;

select * from production.workorder;

select p.productid, p.name as product_name, w.workorderid, w.orderqty, w.scrappedqty
from production.workorder w
right join production.product p using(productid)
order by p.productid;


