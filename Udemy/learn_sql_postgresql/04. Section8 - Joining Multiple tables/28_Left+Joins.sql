SELECT companyname, orderid
FROM customers
LEFT JOIN orders ON customers.customerid=orders.customerid;

SELECT companyname, orderid
FROM customers
LEFT JOIN orders ON customers.customerid=orders.customerid
WHERE orderid IS NULL;

SELECT productname, orderid
FROM products
LEFT JOIN order_details ON products.productid=order_details.productid;

SELECT productname, orderid
FROM products
LEFT JOIN order_details ON products.productid=order_details.productid
WHERE orderid IS NULL;
