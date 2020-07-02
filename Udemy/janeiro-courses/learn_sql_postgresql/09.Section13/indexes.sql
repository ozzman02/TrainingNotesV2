/*
    PostgreSQL provides several index types: B-tree, Hash, GiST, SP-GiST, GIN and BRIN. 
    Each index type uses a different algorithm that is best suited to different types of queries.
    By default, the CREATE INDEX command creates B-tree indexes, which fit the most common situations.
*/


create unique index idx_employees_employeeid on public.employees (employeeid);

create index idx_orders_orderid_customerid on public.orders (orderid, customerid);

drop index idx_employees_employeeid;