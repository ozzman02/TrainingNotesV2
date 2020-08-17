/*
    Window Functions: A way to combine group by aggregation with regular select statements.
    The value of aggregation is calculated without combining the returned rows.
*/

/* product prices in a category compared to average for category */
SELECT categoryname,productname,unitprice,
AVG(unitprice) OVER (PARTITION BY categoryname)
FROM products
JOIN categories ON categories.categoryid=products.categoryid

/* We are looking for strange orders of the product 'Alice Mutton'
    Find all records of order details of this product compared to the average order */
SELECT productname,quantity,
AVG(quantity) OVER (PARTITION BY order_details.productid)
FROM products
JOIN order_details on order_details.productid = products.productid
WHERE productname='Alice Mutton'

/* compare each product's order quantity compared to the average order for that product */
SELECT productname,orderid,quantity,
AVG(quantity) OVER (PARTITION BY order_details.productid) AS average
FROM products
JOIN order_details on products.productid=order_details.productid
