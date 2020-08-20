create or replace function sold_more_than(total_sales real)
returns setof products as $$
begin 
	return query select * from products
	where productid in (
		select productid from 
		(select sum(quantity*unitprice), productid 
		 from order_details
		 group by productid 
		 having sum(quantity*unitprice) > total_sales) as qualified_products
	);
end;
$$ language plpgsql;

select sold_more_than(25000);

select (sold_more_than(25000)).*;


create or replace function suppliers_to_reorder_from()
returns setof suppliers as $$
begin 
	return query select * from suppliers
	where supplierid in (
		select supplierid from products
		where unitsinstock + unitsonorder < reorderlevel 
	);
end;
$$ language plpgsql;

select suppliers_to_reorder_from();

select (suppliers_to_reorder_from()).*;

