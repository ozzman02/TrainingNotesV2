/* find items that are in both querys */
SELECT country FROM customers
INTERSECT
SELECT country FROM suppliers;

/* similar to union all, it does not remove duplicates */
SELECT COUNT(*) FROM
(SELECT country FROM customers
INTERSECT ALL
SELECT country FROM suppliers) AS same_country;

SELECT city
FROM customers
INTERSECT
SELECT city
FROM suppliers
ORDER BY country ASC;

SELECT COUNT(*) FROM
(SELECT city FROM customers
INTERSECT
SELECT city FROM suppliers ) AS same_city;
