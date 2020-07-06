SELECT companyname, orderid
FROM orders
RIGHT JOIN customers ON customers.customerid=orders.customerid;

SELECT companyname, orderid
FROM orders
RIGHT JOIN customers ON customers.customerid=orders.customerid
WHERE orderid IS NULL;

SELECT companyname, customercustomerdemo.customerid
FROM customercustomerdemo
RIGHT JOIN customers ON customers.customerid=customercustomerdemo.customerid;
