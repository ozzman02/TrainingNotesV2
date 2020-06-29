SELECT COUNT(*), country
FROM customers
GROUP BY country
ORDER BY COUNT(*) DESC;

SELECT COUNT(*),categoryname
FROM categories
JOIN products ON categories.categoryid=products.categoryid
GROUP BY categoryname
ORDER BY COUNT(*) DESC;

SELECT productname,ROUND(AVG(quantity))
FROM products
JOIN order_details ON order_details.productid=products.productid
GROUP BY productname
ORDER BY AVG(quantity) DESC;

SELECT COUNT(*),country
FROM suppliers
GROUP BY country
ORDER BY COUNT(*) DESC;

SELECT productname, SUM(quantity * order_details.unitprice) AS AmountBought
FROM products
JOIN order_details ON order_details.productid=products.productid
JOIN orders ON orders.orderid=order_details.orderid
WHERE orderdate BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY productname
ORDER BY AmountBought DESC;
