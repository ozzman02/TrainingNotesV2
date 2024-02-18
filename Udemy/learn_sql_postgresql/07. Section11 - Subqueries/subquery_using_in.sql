/* customers that are in same country as the suppliers */
SELECT companyname
FROM customers
WHERE country IN (SELECT DISTINCT country
                                    FROM suppliers);

/* suppliers that are in same city as customers */
SELECT companyname
FROM suppliers
WHERE city IN (SELECT DISTINCT city
                  FROM customers);

                  
